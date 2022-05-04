function imgPreviewLi(readerResult, filename) {
  const li = document.createElement("li");
  const div = document.createElement("div");
  const img = document.createElement("img");
  const span = document.createElement("span");

  li.className = "list-item uk-margin-medium-top";
  div.className = "uk-cover-container";
  img.className = "delete-img-preview";
  img.setAttribute("id", "img-preview-responsive");
  img.setAttribute("src", readerResult);
  img.setAttribute("data-name", filename);
  img.setAttribute("alt", "file-image-preview");
  span.className = "uk-text-meta uk-text-break file-upload-name";
  span.textContent = filename;

  div.append(img);
  li.append(div, span);
  return li;
}

function previewMultipleFiles(files, fileInput, preview, alert, alertMessage) {
	const acceptedDocMimes = ["application/pdf", "image/png", "image/jpeg"];
  const docFiles = [...files]
	
	docFiles.forEach(file => {
		const size = file["size"];
		const fileType = file["type"];
		
		if (docFiles.length !== 0) {
			while(preview.firstChild) {
				preview.removeChild(preview.firstChild);
			}	
		}

		if (size > 2000000) {
			alertMessage.textContent =
				"Sorry, one or more of your files has exceeded the file size limit of 2MB.";
			alertMessage.classList.add("uk-text-danger");
			alert.classList.remove("uk-hidden");
			preview.innerHTML = "";
			fileInput.files = [];
			return false;
		}

		if (acceptedDocMimes.includes(fileType)) {
			alertMessage.textContent = "";
			alert.classList.add("uk-hidden");
			fileInput.files = files;
			
			// console.log(fileInput.files)

			const reader = new FileReader();
			reader.onload = () => { 
				let filename = file["name"];
				let imgPreview = imgPreviewLi(reader.result, filename);
				preview.append(imgPreview);
			};
			reader.readAsDataURL(file);
		} else {
			alertMessage.textContent = "Sorry, your file type is not allowed.";
			alertMessage.classList.add("uk-text-danger");
			alert.classList.remove("uk-hidden");
			preview.innerHTML = "";
			fileInput.files = [];
		}
	});
}

function previewSingleFile(files, fileInput, preview, alert, alertMessage) {	
  const acceptedDocMimes = ["application/pdf", "image/png", "image/jpeg"];
  const size = files[0]["size"];
  const fileType = files[0]["type"];
  let filename = files[0]["name"];
	
  if (files[0].length !== 0) {
    while(preview.firstChild) {
			preview.removeChild(preview.firstChild);
		}
  }

  if (size > 2000000) {
    alertMessage.textContent =
      "Sorry, your file has exceeded the file size limit of 2MB.";
    alertMessage.classList.add("uk-text-danger");
    alert.classList.remove("uk-hidden");
    preview.innerHTML = "";
		fileInput.files = [];
    console.log(`${size} is more than 2 mb`);
    return false;
  }

  if (acceptedDocMimes.includes(fileType)) {
    alertMessage.textContent = "";
    alert.classList.add("uk-hidden");

    const reader = new FileReader();
    reader.onload = () => {
      let imgPreview = imgPreviewLi(reader.result, filename);
      preview.append(imgPreview);
    };
    reader.readAsDataURL(files[0]);
		
  } else {
    alertMessage.textContent = "Sorry, your file type is not allowed.";
    alertMessage.classList.add("uk-text-danger");
    alert.classList.remove("uk-hidden");
    preview.innerHTML = "";
		fileInput.files = [];
    console.log(`${fileType} is not allowed`);
  }
}

let bar = document.getElementById("js-progressbar");

UIkit.upload(".js-upload", {
  url: "",
  multiple: true,

  beforeSend: function() {
    // console.log('beforeSend', arguments);
  },

  beforeAll: function() {
    const files = arguments[1];
    const jsUploadEl = arguments[0].$el;
    const fileInput = jsUploadEl.querySelector(".uk-form-custom>input");
    const preview = jsUploadEl.querySelector("#preview");
    const alert = jsUploadEl.parentElement.querySelector(
      ".uk-upload-box>#error-alert-file-upload"
    );
    const alertMessage = jsUploadEl.parentElement.querySelector(
      ".uk-upload-box>#error-alert-file-upload>p"
    );
    let multiple = false;

    if (fileInput.hasAttribute("multiple")) {
      multiple = true;
			previewMultipleFiles(files, fileInput, preview, alert, alertMessage);
    } else {
      previewSingleFile(files, fileInput, preview, alert, alertMessage);
    }
  },

  load: function() {
    // console.log('load', arguments);
  },

  error: function() {
    // console.log('error', arguments);
  },

  complete: function() {
    // console.log('complete', arguments);
  },

  loadStart: function(e) {
    // console.log('loadStart', arguments);

    bar.removeAttribute("hidden");
    bar.max = e.total;
    bar.value = e.loaded;
  },

  progress: function(e) {
    // console.log('progress', arguments);

    bar.max = e.total;
    bar.value = e.loaded;
  },

  loadEnd: function(e) {
    // console.log('loadEnd', arguments);
    bar.max = e.total;
    bar.value = e.loaded;
  },

  completeAll: function() {
    // console.log('completeAll', arguments);

    setTimeout(function() {
      bar.setAttribute("hidden", "hidden");
    }, 1000);

    // alert('Upload Completed');
  }
});