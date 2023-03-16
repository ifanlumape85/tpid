<section id="kontak" class="contact">
    <div class="container">
        <div class="section-title">
            <h2>Contact</h2>
        </div>

        <div>
            <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.358015865004!2d124.02221571431544!3d0.8703377993650994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x327e6ffa3d62df6b%3A0x65bffe014bb0851e!2sGedung%20Putih%20BKD%20Kab.%20Bolmong!5e0!3m2!1sid!2sid!4v1617805655877!5m2!1sid!2sid" frameborder="0" allowfullscreen loading="lazy"></iframe>
        </div>

        <div class="row mt-5">
            <div class="col-lg-4">
                <div class="info">
                    <div class="address">
                        <i class="icofont-google-map"></i>
                        <h6>Address :</h6>
                        <small class="text-secondary">{{ $profile->address ?? null }}</small>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="info">
                    <div class="email">
                        <i class="icofont-envelope"></i>
                        <h6>e-mail :</h6>
                        <small class="text-secondary">{{ $profile->email ?? null }}</small>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="info">
                    <div class="phone">
                        <i class="icofont-phone"></i>
                        <h6>Phone :</h6>
                        <small class="text-secondary">{{ $profile->phone ?? null }}</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>