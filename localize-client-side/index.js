console.log('test')

fetch('http://localhost:3000/listings')
    .then(response => response.json())
    .then(listings => {
        listings.forEach (listing =>{

            const listingCard = document.createElement('div')
            listingCard.className = "card"

            const listingType = document.createElement('h1')
            listingType.className = "card-title1"
            const listingName = document.createElement('h2')
            listingName.className = "card-title2"
         
            const listingImgCard = document.createElement('img')

            listingType.textContent = listing.product_type
            listingName.innerHTML = `<a href="http://localhost:3001/listing.html?id=${listing.id}">${listing.product_name}</a>`
            listingImgCard.src = `${listing.img_url}`

            listingCard.append(listingType, listingName, listingImgCard)

            const listingContainer = document.getElementById('container')
            listingContainer.append(listingCard)
        

        })
    })
