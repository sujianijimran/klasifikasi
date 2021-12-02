
<?= $this->extend("layout/main") ?>

<?= $this->section("content") ?>
<?php
// print_r($probabilitas_feature);die;
echo "<h1>Total Semua Feature : $total_unique_all_feature</h1>";
foreach ($matrix_feature as $class => $data_kata) {
	
?>
<h1>Hitung Feature</h1>
<h3><?= $class ?></h3>
<h4>Total Feature Kelas <?= $class." : ".count($data_kata) ?></h4>
<div class="table-responsive">
<table class="table table-bordered">
	<thead>
		<tr>
			<td>Komentar</td>
			<?php
			$jumlah_data = 0;
			foreach ($data_kata as $kata => $daftar_nilai) {
				echo "<td>$kata</td>";
				if($jumlah_data>0) continue;
				$jumlah_data = count($daftar_nilai);
			}
			?>
		</tr>
	</thead>
	<tbody>
		<?php 

		for ($i=0; $i < $jumlah_data; $i++) { 
			echo "<tr>
			<td>Komentar ".($i+1)."</td>
			";

			foreach ($data_kata as $kata => $data_nilai) {
				echo "<td>".$data_nilai[$i]."</td>";
			}	

			echo "</tr>";
		}
		
		 ?>
	</tbody>
</table>
</div>
<?php
}
?>

<!-- ==================================================================================================== -->
<!-- ==================================================================================================== -->

<h1>Hitung Jumlah Kata</h1>

<?php 
foreach ($count_feature as $class => $data_kata) {
	?>
<h3><?= $class ?></h3>
<div class="col-md-6">
	<table class="table table-bordered">
	<thead>
		<tr>
			<td width="20%">Kata</td>
			<td width="20%">Jumlah</td>
		</tr>
	</thead>
	<tbody>
		<?php 
		$total_fitur_terhitung = 0;
		foreach ($data_kata as $kata => $jumlah) {
			$total_fitur_terhitung += $jumlah;
			?>
		<tr>
			<td><?= $kata ?></td>
			<td><?= $jumlah ?></td>
		</tr>
			<?php
		}
		 ?>
		 <tr>
		 	<td></td>
		 	<td><?= $total_fitur_terhitung ?></td>
		 </tr>
		
	</tbody>
</table>
</div>


<?php
}
 ?>


<h1>Hitung Probabilitas Kata</h1>

<?php 
foreach ($probabilitas_feature as $class => $data_kata) {
	?>
<h3><?= $class ?></h3>
<div class="col-md-6">
	<table class="table table-bordered">
	<thead>
		<tr>
			<td width="20%">Kata</td>
			<td width="20%">Probabilitas</td>
		</tr>
	</thead>
	<tbody>
		<?php 
		foreach ($data_kata as $kata => $prob) {
			?>
		<tr>
			<td><?= $kata ?></td>
			<td><?= $prob ?></td>
		</tr>
			<?php
		}
		 ?>
		
	</tbody>
</table>
</div>


<?php
}
 ?>
<?= $this->endSection() ?>