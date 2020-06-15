const form = document.querySelector('.category-form-group');

function handleClick(e) {
  const label = this.querySelector('label');
  const sub = document.querySelectorAll('.sub-categories-form');
  if (sub) {
    sub.forEach(subCat => subCat.innerHTML = '');
  }
  if (label.innerText === 'Fashion') {
    const subCategories = `
      <div class="sub-categories-form">
        <div class="form-group select required product_sub_category_id"><label class="select required" for="product_sub_category_id">Sub category <abbr title="required"></abbr></label><select class="form-control select required" name="product[sub_category_id]" id="product_sub_category_id"><option value=""></option>
          <option value="1">Tops</option>
          <option value="2">Bottoms</option>
          <option value="3">Underwears</option>
          <option value="4">Shoes</option>
          <option value="5">Jewelleries</option>
          <option value="6">Bags</option>
          <option value="155">Scarves &amp; Belts</option>
          <option value="156">Sales</option>
       </div>
    `;
    form.insertAdjacentHTML('beforeend', subCategories);
  }
  if (label.innerText === 'Beauty & Wellness') {
    const subCategories = `
      <div class="sub-categories-form">
        <div class="form-group select required product_sub_category_id"><label class="select required" for="product_sub_category_id">Sub category <abbr title="required"></abbr></label><select class="form-control select required" name="product[sub_category_id]" id="product_sub_category_id"><option value=""></option>
          <option value="157">Makeup</option>
          <option value="158">Skin Care</option>
          <option value="159">Hair Care</option>
          <option value="160">Body Care</option>
          <option value="161">Candle &amp; Essential Oils</option>
          <option value="162">Accessories</option>
          <option value="163">Bundles</option>
          <option value="164">sales</option>
      </div>
    `;
    form.insertAdjacentHTML('beforeend', subCategories);
  }

  if (label.innerText === 'Food') {
    const subCategories = `
      <div class="sub-categories-form">
        <div class="form-group select required product_sub_category_id"><label class="select required" for="product_sub_category_id">Sub category <abbr title="required"></abbr></label><select class="form-control select required" name="product[sub_category_id]" id="product_sub_category_id"><option value=""></option>
         <option value="165">Vegetables</option>
         <option value="166">Fruits</option>
         <option value="167">Meat &amp; Fish</option>
         <option value="168">Dairy &amp; Eggs</option>
         <option value="169">Bread &amp; Bakery</option>
         <option value="170">Organic Food</option>
         <option value="171">Beverages</option>
         <option value="172">Snacks &amp; Cookies</option>
         <option value="173">Sales</option>
      </div>
    `;
    form.insertAdjacentHTML('beforeend', subCategories);
  };

  if (label.innerText === 'Home Decor') {
    const subCategories = `
      <div class="sub-categories-form">
        <div class="form-group select required product_sub_category_id"><label class="select required" for="product_sub_category_id">Sub category <abbr title="required"></abbr></label><select class="form-control select required" name="product[sub_category_id]" id="product_sub_category_id"><option value=""></option>
        <option value="174">Wall Decor</option>
        <option value="175">Throws &amp; Blankets</option>
        <option value="176">Planters &amp; Vases</option>
        <option value="177">Home Accessories</option>
        <option value="178">Plates &amp; Bowls</option>
        <option value="179">Glassware &amp; Mugs</option>
        <option value="180">Serveware</option>
        <option value="181">Cultery &amp; Ustensiles</option>
        <option value="182">Towels</option>
        <option value="183">Storage</option>
        <option value="184">Eco-Friendly</option>
        <option value="185">Sales</option></select></div>
      </div>
    `;
    form.insertAdjacentHTML('beforeend', subCategories);
  };
}

const formInput = () => {
  const categories = form.querySelectorAll('.form-check');
  categories.forEach((category) => {
    category.addEventListener('click', handleClick);
  })
}

export { formInput };
