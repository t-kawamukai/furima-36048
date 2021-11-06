window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
   priceInput.addEventListener("input", () => {
     const addTaxPraice = document.getElementById("add-tax-price");
     addTaxPraice.innerHTML = Math.round(priceInput.value * 0.1 );
     const addPofitPraice = document.getElementById("profit");
     addPofitPraice.innerHTML = Math.round(priceInput.value - Math.round(priceInput.value * 0.1 ))
 })
});