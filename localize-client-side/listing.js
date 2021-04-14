const searchParams = new URLSearchParams(window.location.search)
const id = searchParams.get("id")


fetch(`http://localhost:3000/listings/${id}`)
    .then(response => response.json())
    .then(listing => {
    
        const purchaseCard = document.createElement('div')
        purchaseCard.className = "purchase-card"

        const purchasePrice = document.createElement('li')
        purchasePrice.className = "purchase-price"

        const arrivalDate = document.createElement('li')
        arrivalDate.className = "arrival"

       

        const purchaseButton = document.createElement('button')
        purchaseButton.className = "purchase-button"

        const addToCartButton = document.createElement('button')
        addToCartButton.className = "add-button"

        
        arrivalDate.textContent = "Arrives: Weds, Nov 18th"
        purchaseButton.textContent = "Buy Now"
        addToCartButton.textContent = "Add to Cart"

        purchaseCard.append( arrivalDate, purchaseButton, addToCartButton)

        const purchaseContainer = document.getElementById('purchase-container')
            purchaseContainer.append(purchaseCard)




        const showListingCard = document.createElement('div')
        showListingCard.className = "card"
        
        
        const showListingType = document.createElement('h1')
        showListingType.className = "card-title1"

        const showListingName = document.createElement('h2')
        showListingName.className = "card-title2"

        const showListingPrice = document.createElement('p')
        showListingPrice.className = "price"

        const showListingQuantity = document.createElement('p')
        showListingQuantity.className = "quantity"

        const showListingSellerName = document.createElement('p')
        showListingSellerName.className = "seller"

         const showListingSellerLocation = document.createElement('p')
        showListingSellerLocation.className = "sellerlocation"

        const showListingImgCard = document.createElement('img')
        
        
        showListingType.textContent = listing.product_type
        showListingName.textContent = listing.product_name
        showListingPrice.innerHTML = `price: $${listing.price}` 
        showListingQuantity.innerHTML = `quantity: ${listing.quantity}kg`
        showListingImgCard.src = `${listing.img_url}`
        showListingSellerName.textContent = `Seller: ${listing.seller.name}`
        showListingSellerLocation.textContent = `Location: ${listing.seller.location}`
        
        showListingCard.append(showListingType, showListingName, showListingSellerName, showListingSellerLocation, showListingPrice, showListingQuantity, showListingImgCard)
        
        const showListingContainer = document.getElementById('container')
        showListingContainer.append(showListingCard)
    })

    const loginRedirect = document.querySelector('#home-button').onclick = function () {
        location.href = "http://localhost:3001/index"
    }