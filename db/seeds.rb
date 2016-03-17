# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all

Product.create(
  title: "Pantone PREMIUM METALLICS CHIPS Coated GB1505",
  price: 130.00,
  image: "http://i.ebayimg.com/images/g/u6UAAOSwpDdVUZQu/s-l1600.jpg",
  description: "The new PANTONE PREMIUM METALLICS CHIPS COATED features 300 dazzling metallic colors developed in response to the rapidly rising popularity of these special-effect inks. Pantone Premium Metallic colors have greater brilliance, can be easily coated without any loss in luster and have a longer life after printing without fear of tarnishing or blemishing. Chromatically arranged, for more intuitive color selection. Ink formulations are provided. Available on coated stock only.",
  views: 24,
  watchers: 0,
  shipping_cost: 2.72,
  sell_minimum: 0.00,
  quantity: 1
)

Product.create(
  title: "Pantone PASTELS & NEONS CHIPS Coated & Uncoated GB1504",
  price: 105.00,
  image: "http://i.ebayimg.com/images/g/n2gAAOSw6BtVUYyd/s-l500.jpg",
  description: "The new PANTONE PLUS SERIES PASTELS & NEONS CHIPS brings together 154 soothing pastels and 56 hot neons in a convenient chip format that attaches to artwork and digital files for easy and consistent color communication. Contemporary colors, arranged chromatically for intuitive selection. Ink mixing formulas are provided. Compatible with today’s digital workflows. Text weight paper is used, to match popular print specifications.",
  views: 47,
  watchers: 1,
  shipping_cost: 2.72,
  sell_minimum: 0.00,
  quantity: 2
)

Product.create(
  title: "Pantone METALLIC CHIPS Coated GB1507",
  price: 109.00,
  image: "http://i.ebayimg.com/images/g/i80AAOSwv0tVUZKR/s-l300.jpg",
  description: "The PANTONE METALLIC CHIPS book offers six specification chips for each PANTONE Metallic color. You get a complete range of 301 chromatically arranged brilliant metallics printed on coated paper.",
  views: 39,
  watchers: 1,
  shipping_cost: 2.72,
  sell_minimum: 0.00,
  quantity: 1
)