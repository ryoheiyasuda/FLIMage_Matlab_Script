function a = readSPC
fid = fopen ('c:\ryohei\matlab\image-bead.sdt', 'r')
a.header.spc_revision = fread(fid, 1, 'int16')
a.header.info_offset = fread(fid, 1, 'int32')
a.header.info_length = fread(fid, 1, 'int16')
a.header.setup_offset = fread(fid, 1, 'int32')
a.header.setup_length = fread(fid, 1, 'int16')
a.header.data_block_offset = fread(fid, 1, 'int32')
a.header.no_of_data_blocks_old = fread(fid, 1, 'int16')
a.header.data_block_length = fread(fid, 1, 'int32')
a.header.meas_desc_block_offset = fread(fid, 1, 'int32')
a.header.no_of_meas_desc_blocks = fread(fid, 1, 'int16')
a.header.meas_desc_block_length = fread(fid, 1, 'int16')
a.header.header_valid = fread(fid, 1, 'uint16')
a.header.no_of_data_blocks = fread(fid, 1, 'uint32')
a.header.reserve2 = fread(fid, 1, 'uint16')
a.header.checksum = fread(fid, 1, 'uint16')

infoident = fgetl(fid)
a.info.ID = fgetl(fid)
a.info.title = fgetl(fid)
a.info.version = fgetl(fid)
a.info.revision = fgetl(fid)
a.info.time = fgetl(fid)
a.info.author = fgetl(fid)
a.info.company = fgetl(fid)
a.info.contents = fgetl(fid)
a.info.contents2 = fgetl(fid)
infoend = fgetl(fid)

fseek (fid, a.header.data_block_offset, 'bof')
a.dataheader.block_no = fread(fid, 1, 'int16')
a.dataheader.data_offset = fread(fid, 1, 'int32')
a.dataheader.next_block_offset = fread(fid, 1, 'int32')
a.dataheader.block_type = fread(fid, 1, 'uint16')
a.dataheader.meas_desc_block_no = fread(fid, 1, 'int16')
a.dataheader.lblock_no = fread(fid, 1, 'uint32')
a.dataheader.block_length = fread(fid, 1, 'uint32')

fseek (fid, a.header.meas_desc_block_offset, 'bof')
a.datainfo.time = reshape(char(fread(fid, 9, 'schar')), 1, 9)
a.datainfo.date = reshape(char(fread(fid, 11, 'schar')), 1, 11)
a.datainfo.mod_ser_no = reshape(char(fread(fid, 16, 'schar')), 1, 16)
a.datainfo.meas_mode = fread(fid, 1, 'int16')
a.datainfo.cfd_ll = fread(fid, 1, 'float32')
a.datainfo.cfd_lh = fread(fid, 1, 'float32')
a.datainfo.cfd_zc = fread(fid, 1, 'float32')
a.datainfo.cfd_hf = fread(fid, 1, 'float32')
a.datainfo.syn_zc = fread(fid, 1, 'float32')
a.datainfo.syn_fd = fread(fid, 1, 'int16')
a.datainfo.syn_hf = fread(fid, 1, 'float32')
a.datainfo.tac_r = fread(fid, 1, 'float32')
a.datainfo.tac_g = fread(fid, 1, 'int16')
a.datainfo.tac_of = fread(fid, 1, 'float32')
a.datainfo.tac_ll = fread(fid, 1, 'float32')
a.datainfo.taclh = fread(fid, 1, 'float32')
a.datainfo.adc_re = fread(fid, 1, 'int16')
a.datainfo.eal_de = fread(fid, 1, 'int16')
a.datainfo.ncx = fread(fid, 1, 'int16')
a.datainfo.ncy = fread(fid, 1, 'int16')
a.datainfo.page = fread(fid, 1, 'uint16')
a.datainfo.col_t = fread(fid, 1, 'float32')
a.datainfo.rep_t = fread(fid, 1, 'float32')
a.datainfo.stopt = fread(fid, 1, 'int16')
a.datainfo.overfl = char(fread(fid, 1, 'schar'))
a.datainfo.use_motor = fread(fid, 1, 'int16')
a.datainfo.steps = fread(fid, 1, 'int16')
a.datainfo.offset = fread(fid, 1, 'float32')
a.datainfo.dither = fread(fid, 1, 'int16')
a.datainfo.incr = fread(fid, 1, 'int16')
a.datainfo.mem_bank = fread(fid, 1, 'int16')
a.datainfo.mod_type = reshape(char(fread(fid, 16, 'schar')), 1, 16)
a.datainfo.syn_th = fread(fid, 1, 'float32')
a.datainfo.dead_time_comp = fread(fid, 1, 'int16')
a.datainfo.polarity_l = fread(fid, 1, 'int16')
a.datainfo.polarity_f = fread(fid, 1, 'int16')
a.datainfo.polarity_p = fread(fid, 1, 'int16')
a.datainfo.linediv = fread(fid, 1, 'int16')
a.datainfo.accumulate = fread(fid, 1, 'int16')
a.datainfo.flbck_y = fread(fid, 1, 'int32')
a.datainfo.flbck_x = fread(fid, 1, 'int32')
a.datainfo.bord_u = fread(fid, 1, 'int32')
a.datainfo.bord_l = fread(fid, 1, 'int32')
a.datainfo.pix_time = fread(fid, 1, 'float32')
a.datainfo.pix_clk = fread(fid, 1, 'int16')
a.datainfo.pix_clk = fread(fid, 1, 'int16')
a.datainfo.scan_x = fread(fid, 1, 'int32')
a.datainfo.scan_y = fread(fid, 1, 'int32')
a.datainfo.scan_rx = fread(fid, 1, 'int32')
a.datainfo.scan_ry = fread(fid, 1, 'int32')
a.datainfo.fifo_type = fread(fid, 1, 'int16')
a.datainfo.epx_div = fread(fid, 1, 'int16')
a.datainfo.mod_type_code = fread(fid, 1, 'int16')

fseek (fid, a.dataheader.data_offset, 'bof')
n_curves = a.datainfo.adc_re*a.datainfo.scan_x*a.datainfo.scan_y
a.image = fread(fid, n_curves, 'uint16')
reshape(a.image, a.datainfo.adc_re, a.datainfo.scan_x, a.datainfo.scan_y)
fclose(fid)
