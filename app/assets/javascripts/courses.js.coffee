# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#course_topic_ids').chosen()
  $('#tutorial_group_ids').chosen()
  $('#blog_tag_ids').chosen()
  $('.dropdown-toggle').dropdown()