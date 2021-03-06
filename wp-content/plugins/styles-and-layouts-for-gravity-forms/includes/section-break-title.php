<?php
//form  section
/* Start of Section */
$wp_customize->add_section( 'gf_stla_form_id_section_break_title_description' , array(
    'title' => 'Section Break Title & Description ',
    'panel' => 'gf_stla_panel',
  ) );

 $wp_customize->add_setting( 'gf_stla_form_id_'.$current_form_id.'[section-break-title][text-align]' , array(
      'default'     => '',
      'transport'   => 'postMessage',
      'type' => 'option'
  ) );

  $wp_customize->add_control('gf_stla_form_id_'.$current_form_id.'[section-break-title][text-align]',   array(
    'type' => 'select',
    'priority' => 10, // Within the section.
    'section' => 'gf_stla_form_id_section_break_title_description', // Required, core or custom.
    'label' => __( 'Title  Font Alignment' ),
    'choices'        => $align_pos,
  )
);

/* Start of Section */
//label
 $wp_customize->add_control(
  new WP_Customize_Label_Only(
    $wp_customize, // WP_Customize_Manager
    'gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size-label-only]', // Setting id
    array( // Args, including any custom ones.
      'label' => __( 'Title Font Size' ),
      'section' => 'gf_stla_form_id_section_break_title_description',
      'settings' => array(),
    )
  )

);
/* for pc */
 $wp_customize->add_setting( 'gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size]' , array(
      'default'     => '',
      'transport'   => 'refresh',
      'type' => 'option'
  ) );

  $wp_customize->add_control('gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size]',   array(
    'type' => 'text',
    'priority' => 10, // Within the section.
    'section' => 'gf_stla_form_id_section_break_title_description', // Required, core or custom.
    'label' => __( '' ),
   'input_attrs' => array(
    'placeholder' => 'Ex: 40px'
  )
  )
);

/* for tablet */
  $wp_customize->add_setting( 'gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size-tab]' , array(
      'default'     => '',
      'transport'   => 'refresh',
      'type' => 'option'
  ) );

  $wp_customize->add_control('gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size-tab]',   array(
    'type' => 'text',
    'priority' => 10, // Within the section.
    'section' => 'gf_stla_form_id_section_break_title_description', // Required, core or custom.
    'label' => __( '' ),
   'input_attrs' => array(
    'placeholder' => 'Ex: 40px'
  )
  )
);

/* for mobile */
  $wp_customize->add_setting( 'gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size-phone]' , array(
      'default'     => '',
      'transport'   => 'refresh',
      'type' => 'option'
  ) );

  $wp_customize->add_control('gf_stla_form_id_'.$current_form_id.'[section-break-title][font-size-phone]',   array(
    'type' => 'text',
    'priority' => 10, // Within the section.
    'section' => 'gf_stla_form_id_section_break_title_description', // Required, core or custom.
    'label' => __( '' ),
   'input_attrs' => array(
    'placeholder' => 'Ex: 40px'
  )
  )
);

/* Start of Section */
 $wp_customize->add_setting( 'gf_stla_form_id_'.$current_form_id.'[section-break-title][font-color]' , array(
      'default'     => '',
      'transport'   => 'postMessage',
      'type' => 'option'
  ) );

  $wp_customize->add_control(
  new WP_Customize_Color_Control(
    $wp_customize, // WP_Customize_Manager
    'gf_stla_form_id_'.$current_form_id.'[section-break-title][font-color]', // Setting id
    array( // Args, including any custom ones.
      'label' => __( 'Title Font Color' ),
      'section' => 'gf_stla_form_id_section_break_title_description',
    )
  )
);
/* Start of Section */
  $wp_customize->add_setting( 'gf_stla_form_id_'.$current_form_id.'[section-break-title][background-color]' , array(
      'default'     => '',
      'transport'   => 'postMessage',
      'type' => 'option'
  ) );

  $wp_customize->add_control(
  new WP_Customize_Color_Control(
    $wp_customize, // WP_Customize_Manager
    'gf_stla_form_id_'.$current_form_id.'[section-break-title][background-color]', // Setting id
    array( // Args, including any custom ones.
      'label' => __( 'Title Background Color' ),
      'section' => 'gf_stla_form_id_section_break_title_description',
    )
  )
);