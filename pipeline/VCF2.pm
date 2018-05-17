package DisGen::pipeline::VCF2;

sub VEPvcf {
    my ($tool, $input_vcf, $out_file_prefix, $out_dir) = @_;
    my $cmd;

	$cmd = "export PERL5LIB=$DisGen::general::Resource::env_vars{PERL5LIB} && export PATH=$DisGen::general::Resource::env_vars{PATH} && $DisGen::general::Resource::_wftool_{perl} $DisGen::general::Resource::_wftool_{VEP} -i $input_vcf -o $out_dir/$out_file_prefix.VEP.vcf --offline --dir_cache $DisGen::general::Resource::_wfdata_{ensembl_cache} --vcf --merged --force_overwrite --quiet --fork 4 --hgvs --assembly GRCh37 --everything";

	return ($cmd);
}

1;
