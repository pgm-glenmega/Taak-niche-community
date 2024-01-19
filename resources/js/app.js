import Alpine from "alpinejs";

window.Alpine = Alpine;

Alpine.start();

let page = 1;
let loading = false;
let lastPage = false;
const workouts = document.getElementById("workouts");

const loadMore = async () => {
    if (loading) {
        return;
    }
    loading = true;
    page++;
    if (lastPage && page > lastPage) {
        return;
    }
    console.log(`load page ${page}`);

    const response = await fetch(`/api/workouts?page=${page}`);
    const data = await response.json();
    console.log(data);
    lastPage = data.last_page;

    data.data.forEach((workout) => {
        const div = document.createElement("div");
        div.innerHTML = `<div class="bg-white rounded-lg overflow-hidden shadow-md">
        <img class="w-full h-48 object-cover object-center" src="${ workout.image_url }" alt="${ workout.name }">
        <div class="p-6">
            <h2 class="font-bold text-xl mb-2">${workout.name }</h2>
            <p class="text-gray-700 text-sm">${ workout.description }</p>
            <p class="text-gray-600 mt-2">Duration: ${ workout.duration } minutes</p>
        </div>
        <div class="bg-gray-100 p-4">
            <a href="/workouts/${workout.id}" class="bg-blue-500 hover:bg-blue-700 text-white px-4 py-2 rounded-md"> View Workout</a>                
        </div>
    </div>`;
        workouts.appendChild(div);
    });
    loading = false;
};

window.addEventListener("scroll", () => {
    const scrollpos = window.scrollY + window.innerHeight;
    const height = document.body.offsetHeight;
    if (scrollpos >= height - 200) {
        loadMore();
    }
});
