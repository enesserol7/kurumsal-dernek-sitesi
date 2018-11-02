<div class="row">
    <div class="col-md-8">
        <h3 class="contact-agileits2">Bize Yazın</h3>
        <form action="<?php echo base_url(); ?>" method="post">
            <div class="control-group form-group">
                <div class="controls">
                    <label>İsim & Soyisim:</label>   
                    <input type="text" class="form-control" id="name" placeholder="İsim & Soyisim" required/>
                </div>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    <label>Telefon:</label>
                    <input type="tel" class="form-control" id="phone" placeholder="Telefon" required/>
                </div>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    <label>E-Posta Adresi:</label>
                    <input type="email" class="form-control" id="email" placeholder="E-Posta Adresi" required/>
                </div>
            </div>
            <div class="control-group form-group">
                <div class="controls">
                    <label>Mesaj:</label>
                    <textarea rows="10" cols="100" class="form-control" id="message" placeholder="Mesaj" maxlength="999" style="resize:none" required/></textarea>
                </div>
            </div>
            <button href="#" type="submit" class="btn btn-primary">Gönder</button>
        </form>
    </div>

</div>