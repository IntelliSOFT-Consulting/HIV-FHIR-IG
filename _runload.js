const tar = require('tar-stream')
const fs = require('fs')
const zlib = require('zlib')
const mkFhir = require('fhir.js')
const http = require('http')

http.globalAgent.maxSockets = 1

let client = mkFhir({
  //baseUrl: 'http://localhost:8080/matchboxv3/fhir'
  baseUrl: 'http://localhost:8080/fhir'
})

const submitResource = (file, resource) => {
  if ( resource.resourceType === "Bundle" && ( resource.type === "transaction" || resource.type === "batch" ) ) {
    client.transaction( {
      type: resource.resourceType,
      resource: resource
    } ).catch( e => {
      console.error("Failed to update",file,e.status)
      console.log(e)
      console.log(JSON.stringify(e.data,null,2))
      throw e
    } ).then( res => {
      console.log("Updated",file,res.status)
    } )
  } else if ( resource.id ) {
    client.update( {
      type: resource.resourceType,
      id: resource.id,
      resource: resource
    } ).catch( e => {
      console.error("Failed to update",file,e.status)
      throw e
    } ).then( res => {
      console.log("Updated",file,res.status)
    } )
  } else {
    client.create( {
      type: resource.resourceType,
      resource: resource
    } ).catch( e => {
      console.error("Failed to create",file,e.status)
      throw e
    } ).then( res => {
      console.log("Created",file,res.status)
    } )
  }
  
}

for ( let file of process.argv.slice(2) ) {
  console.log("Sending",file,"...")


  if ( file.endsWith('package.tgz') ) {

    var extract = tar.extract()

    extract.on('entry', (header, stream, next) => {
      //console.log(header.name)
      let resourceType = header.name.match( /package\/([^-]+)-.*\.json/ )
      var chunks = []
      stream.on('data', (chunk) => {
        if ( header.name.endsWith('.json') ) {
          chunks.push(chunk)
        } else {
          stream.resume()
        }
      })
      stream.on('end', () => {
        if ( chunks.length ) {
          data = Buffer.concat(chunks)
          let resource = JSON.parse(data)
          if ( (resourceType && resource.resourceType === resourceType[1]) || header.name.startsWith('package/example') ) {
            submitResource( header.name, resource )
          }
        }
        next()
      })
    })

    extract.on('finish', () => {
      console.log("done")
    })

    console.log("Processing package", file)
    fs.createReadStream(file).pipe(zlib.createGunzip()).pipe(extract)


  } else if ( file.endsWith('.json') ) {

    let content = fs.readFileSync(file)
    let resource = JSON.parse(content)
    submitResource( file, resource )

  }

}

