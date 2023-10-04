
/*This is a model class, where all our data is stored. We've created 3 variables, all of them will return a string.
* We then create a constructor after declaring them in order to access them.
* Then lastly, we make a List called "mode" where will will define our data. */
class Models

{
  final String title;
  final String img;
  final String desc;

  Models(this.title, this.img, this.desc);

  static List <Models> mode =
  [
    Models("Switch to Renewable Energy", "https://images.pexels.com/photos/159397/solar-panel-array-power-sun-electricity-159397.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "Eswatini has abundant solar and wind resources, so switching to renewable energy is a great way to reduce your carbon footprint."
            "There are a number of companies in Eswatini that can help you install solar panels or a wind turbine at your home or business"),
    Models("Use Public Transportation", "https://images.pexels.com/photos/7385384/pexels-photo-7385384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    "Transportation is one of the biggest sources of carbon emissions in Eswatini. By using public transportation, walking, or biking, you can reduce your emissions"
        "and help to improve air quality."
        ),
    Models("Eat Less Meat and More Plant-Based Foods", "https://images.pexels.com/photos/13084371/pexels-photo-13084371.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    "Producing meat has a high carbon footprint. Eating less meat and more plant based foods is a great way to reduce your carbon footprint and improve your health."),
    Models("Conserve Water and Energy at home", "https://images.pexels.com/photos/4289045/pexels-photo-4289045.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    "There are many ways to conserve water and energy at home, such as taking shorter showers, turning off lights when you leave a room, and unplugging "
        "appliances when you're not using them."),
    Models("Reduce your Consumption of Goods and Services", "https://images.pexels.com/photos/4397919/pexels-photo-4397919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    "The more goods and services we consume, the more carbon emissions are produced. By reducing our consumption, we can help to reduce greenhouse gas emissions."),
    Models("Compost Your Food Scraps", "https://images.theconversation.com/files/529526/original/file-20230601-15-v2l0pv.jpg?ixlib=rb-1.1.0&rect=64%2C0%2C898%2C449&q=45&auto=format&w=1356&h=668&fit=crop",
    "Composting food scraps reduces methane emissions from landfills. There are a number of ways to compost at home, such as using a compost bin or worm farm"),
    Models("Plant Trees", "https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1613&q=80",
    "Trees absorb carbon dioxide from the atmosphere, so planting trees is a great way to reduce greenhouse gas emissions. You can plant trees in your yard"
        "at your school or workplace, or in your community."),
    Models("Support Businesses That Are Committed to Sustainability", "https://images.pexels.com/photos/730423/pexels-photo-730423.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    "When you support businesses that are committed to sustainability, you're helping to reduce the environmental impact of your spending. Look for businesses "
        "tha use renewable energy, recycle and compost, and source their products sustainably."),
    Models("Educate Yourself and Others About Climate Change", "https://static.independent.co.uk/2021/10/13/14/iStock-1314146312.jpg?width=1200&height=900&fit=crop",
    "The more people who are aware of climate change and it's impacts, the more likely we are to take action to address it. Talk to your friends and family about climate change,"
        "and share information on social media"),
    Models("Get Involved in Climate Activism", "https://www.theenvironmentalblog.org/wp-content/uploads/2022/07/AdobeStock_276170203.jpeg", 
    "There are a number of climate activist groups in Eswatini. Getting involved in one of there groups is a great way to make a difference in the fight against climate change."),
    Models("Support Sustainable Agriculture", "https://images.pexels.com/photos/3912518/pexels-photo-3912518.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    "Sustainable agriculture practices, such as crop rotation and cover cropping, can help to reduce greenhouse gas emissions from the agricultural sector."),
    Models("Protect Forests", "https://images.pexels.com/photos/3932693/pexels-photo-3932693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Forests play an important role in carbon sequestration. You can help to protect forests by supporting organizations that are working to conserve them."),
    Models("Reduce Your Food Waste", "https://images.pexels.com/photos/6502330/pexels-photo-6502330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Food waste is a major source of methane emissions. By reducing your food waste, you can help to reduce greenhouse gas emissions and save money."),
    Models("Repair Instead of Replace", "https://images.pexels.com/photos/5691503/pexels-photo-5691503.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "When something breaks, try to repair it instead of replacing it. This will help to reduce the amount of waste that goes to landfills."),
    Models("Buy Used Clothes", "https://images.pexels.com/photos/264726/pexels-photo-264726.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Buying used clothes instead of new clothes reduces the amount of energy and resources that are used to produce new clothing."),
    Models("Avoid Single-Use Plastic", "https://www.implasticfree.com/wp-content/uploads/2022/10/Say-No-To-Single-Use-Plastic-1024x576.jpg",
    "Single-use plastics, such as plastic bags and straws, are a major source of pollution. Avoid single-use plastics whenever possible."),
    Models("Support Renewable Energy Projects", "https://images.pexels.com/photos/356036/pexels-photo-356036.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "There are a number of renewable energy projects underway in Eswatini. You can support these projects by investing in them or by purchasing renewable energy credits."),
    Models("Advocate For Climate Action From Your Government", "https://images.pexels.com/photos/2561628/pexels-photo-2561628.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "Contact your elected officials and let them know that you support climate action."),
    Models("Vote For Candidates Who Are Committed To Climate Action", "https://foodtank.com/wp-content/uploads/2020/10/Food-Tank-36-Climate-Orgs.jpg",
    "When you vote, choose candidates who have a strong record on climate change."),
    Models("Be A Climate Champion", "https://cdn.vox-cdn.com/thumbor/QPIC5z_Ho5YCRLIr_cARdf8n5eY=/0x0:5016x3344/1200x800/filters:focal(1841x548:2643x1350)/cdn.vox-cdn.com/uploads/chorus_image/image/65261936/GettyImages_1167860285.0.jpg",
    "Talk to your friends, family, and colleagues about climate change and encourage them to take action.")
  ];


}