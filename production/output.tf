output "elb_listener" {
  value = module.prod_elb_1_public.elb_listner
}

output "elb_listener_public" {
  value = module.prod_elb_1_public.elb_listner
}
output "natgwid" {
  value = module.prod_natgw_1.natgw_id
}