function(single_executable)
  list(GET ARGN 0 FILE_NAME)
  file(GLOB SOURCE_EXE ${FILE_NAME})
  get_filename_component(FILE_NAME_WE ${FILE_NAME} NAME_WE)
  add_executable(${PROJECT_NAME}_${FILE_NAME_WE} ${SOURCE_EXE})
endfunction()

function(single_executable_link_libraries)
  list(GET ARGN 0 FILE_NAME)
  get_filename_component(FILE_NAME_WE ${FILE_NAME} NAME_WE)
  list(REMOVE_AT ARGN 0)
  target_link_libraries(${PROJECT_NAME}_${FILE_NAME_WE} ${ARGN})
endfunction()
