<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<section id="hire">
    <h1>Contact Me</h1>
    
    <form>
	      <div class="field name-box">
		        <input type="text" id="name" placeholder="Who Are You?"/>
        		<label for="name">Name</label>
		        <span class="ss-icon">check</span>
	      </div>

	      <div class="field email-box">
		        <input type="text" id="email" placeholder="name@email.com"/>
		        <label for="email">Email</label>
		        <span class="ss-icon">check</span>
	      </div>

	      <div class="field msg-box">
		        <textarea id="msg" rows="4" placeholder="Your message goes here..."/></textarea>
		        <label for="msg">Msg</label>
		        <span class="ss-icon">check</span>
	      </div>

	      <input class="button" type="submit" value="Send" />
  </form>
</section>
</head>
<body>
// Grid
@mixin grid($column) {
	  width:(100% / 12) * $column;
	  margin:0 auto;
}

// Transition Ease
@mixin ease($time:333ms, $attr:all, $curve:ease-in-out) {
	  -webkit-transition: $attr $time $curve;
	  -moz-transition: $attr $time $curve;
	  -o-transition: $attr $time $curve;
	  -ms-transition: $attr $time $curve;
	  transition: $attr $time $curve;
}

//-- Lato --//
@mixin lato-1 {font-family: 'Lato', sans-serif; font-weight:100;}
@mixin lato-1-i {@include lato-1; font-style:italic;}

@mixin lato-3 {font-family: 'Lato', sans-serif; font-weight:300;}
@mixin lato-3-i {@include lato-3; font-style:italic;}

@mixin lato-4 {font-family: 'Lato', sans-serif; font-weight:400;}
@mixin lato-4-i {@include lato-4; font-style:italic;}

@mixin lato-7 {font-family: 'Lato', sans-serif; font-weight:700;}
@mixin lato-7-i {@include lato-7; font-style:italic;}

@mixin lato-9 {font-family: 'Lato', sans-serif; font-weight:900;}
@mixin lato-9-i {@include lato-9; font-style:italic;}


// Colors
$blue:#313A3D;
$orange:#FD9638;
$dark-orange:darken($orange, 20%);
$grey:#B6B6B6;
$light-grey:lighten($grey, 15%);

$background:#efefef;
$field-color:#E8E9EA;





body {
	  background:$background;
	  font-size:62.5%;
	  @include lato-3;
	  color:$grey;

  section {
	    background:white;
    margin:60px auto 120px;
    border-top:15px solid $blue;
    text-align:center;
  	  padding:50px 0 110px;
    width:80%;
    max-width:1100px;
    
    h1 {
      margin-bottom:40px;
      font-size:4em;
      text-transform:uppercase;
      @include lato-1;
    }
  }
}

// Form
form {
		  @include grid(7);

		  .field {
			    width:100%;
			    position:relative;
			    margin-bottom:15px;

    			$hover-label-width:18%;
			    $placeholder-bumper:1.5%;
			    $label-padding:18px;

    			// Label
			    label {
				      text-transform: uppercase;
				      position:absolute;
				      top:0;
				      left:0;
				      background:$blue;
				      width:100%;
				      padding:($label-padding + 0px) 0;
				      font-size: 1.45em;
				      letter-spacing: 0.075em;

				      @include ease(333ms);

				      // Checkmark
				      + span {
					        font-family: 'SSStandard';
					        opacity: 0;
					        color:white;
				        	display: block;
					        position:absolute;
					        top: 12px;
					        left: 7%;
					        font-size: 2.5em;
					        text-shadow:1px 2px 0 $dark-orange;

					        @include ease(333ms);
			      	}
			    }

    			// Fields
		    	input[type="text"],
			    textarea {
				      border:none;
				      background:$field-color;
				      width:100% - $hover-label-width - $placeholder-bumper;
				      margin:0;
				      padding:$label-padding 0;
				      padding-left:$hover-label-width + $placeholder-bumper;
				      color:$blue;
				      font-size: 1.4em;
				      letter-spacing: 0.05em;
				      text-transform: uppercase;

				      &#msg {
					        height: 18px;
					        resize: none;
					        @include ease(333ms);
				      }

      				// Focus and JS Toggle Class
				      &:focus,
				      &.focused {
					        outline:none;

        					&#msg {
						          padding-bottom:150px;
					        }

        					+ label {
						          width:$hover-label-width;
						          background:$orange;
						          color:$blue;
					        }
				      }

      				// JS Toggle Class
				      &.focused {
					        + label {
						          color: $orange;
					        }
				      }
			    }

    			// Field Hover
			    &:hover {
				      label {
					        width:$hover-label-width;
					        background:$blue;
					        color:white;
				      }
			    }
		  }

		  // Submit Button
		  		  input[type="submit"] {
			    background:$orange;
			    color:white;
			    -webkit-appearance: none;
			    border: none;
			    text-transform: uppercase;
    position:relative;
		    padding: 13px 50px;
		    font-size: 1.4em;
		    letter-spacing: 0.1em;
		    @include lato-3;
		    @include ease;
        
    			&:hover {
				      background:$blue;
				      color:$orange;
			    }

    			&:focus {
				      outline:none;
				      background:$dark-orange;
			    }
		  }
	}
</body>		  
</html>