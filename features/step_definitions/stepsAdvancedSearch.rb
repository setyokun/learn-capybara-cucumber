
Given("open google advanced search") do
  visit '/advanced_search?hl=en'
end

Then("input title {string}, languange, and time") do |title|
    find(:id, 'xX4UFf').set(title)
    find(:id,'lr_button').click
    find(:css,'.goog-menuitem[value="lang_id"]').click
    find(:id,'as_qdr_button').click
    find(:css,'#as_qdr_menu [value="m"]').click
    find(:css,'[type="submit"]').click    
end

Then("validate result advanced search") do
    expect(page).to have_title 'Elon Musk'
    expect(page).to have_text 'Search Indonesian pages'
    expect(page).to have_text 'Past month'
end