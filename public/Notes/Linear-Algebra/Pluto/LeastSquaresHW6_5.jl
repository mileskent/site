### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ 83366998-96f8-11ef-0e41-3383f6e4b03c
using LinearAlgebra, RowEchelon

# ╔═╡ 66475f78-8f03-4f6a-9256-2aef9a41dbf5
md"""
### Question 2

Describe all least-squares solutions of the equation
Ax = b
"""

# ╔═╡ 122aae19-ef60-4905-9482-da9364c35ac5
md"""
The​ least-squares solutions are all vectors of the form
xhat = ___ + x3 ___
"""

# ╔═╡ 966d747c-6a35-4d4e-94b0-6685bd1300fd
A = [
	1 1 0;
	1 1 0;
	1 0 1;
	1 0 1
]

# ╔═╡ b1642481-a85c-4a8a-89a9-2e4b92282b32
b = [
	1;
	3;
	7;
	5
]

# ╔═╡ f2f08fa8-81dc-4b19-9259-5cab4dd10a7e
AT = transpose(A)

# ╔═╡ 87ffc45c-24a4-4b72-beef-5fe0f0146979
Aug = [AT*A AT*b]

# ╔═╡ 9d2588fb-fbe3-4a58-a1c8-b628adc27d40
rref(Aug)

# ╔═╡ fbed8fec-7eb8-4be9-a25a-1ba6ab9631ba
md"""
x1 + x3 = 6; x2 - x3 = -4
"""

# ╔═╡ 616a15f4-7244-4d99-8d30-ef55ee5ff297
md"""
x1 = 6 - x3; x2 = -4 + x3
"""

# ╔═╡ 041cf614-9a30-4c4f-b05e-08bbdd0022b1
md"""

The​ least-squares solutions are all vectors of the form
"""

# ╔═╡ 8f66fe04-0879-4ee7-a87e-067af86a6eb7
a = [
	6;
	-4;
	0;
]

# ╔═╡ 2bd52e1b-ca2d-4232-b834-c9c5dc6f0c88
f = [
	-1;
	1;
	1
]

# ╔═╡ f8a2da11-cfd9-42c3-b2f7-573ffa728925
md"""
### Question 3
Compute the least-squares error associated with the solution
"""

# ╔═╡ cd3e4ad2-81dd-4161-9bd7-6255a171d884
A_3 = [
	1 2;
	1 -1;
	1 1
]

# ╔═╡ 90f4caf1-ffec-40d7-9699-24f25fb7833d
b_3 = [
	4;
	6;
	0
]

# ╔═╡ a50108d0-7b4f-4b37-9bdd-2fb511d7f3d6
xhat_3 = [
	4;
	-1
]

# ╔═╡ ef9f311e-dbb2-4008-af80-eaddcc66a249
pred_b_3 = A_3 * xhat_3

# ╔═╡ 8f1b175c-756f-4627-a5c1-cdc67809a8b5
error_3 = sqrt(sum((b_3 - pred_b_3).^2))

# ╔═╡ 54168962-b4d6-46cf-b94d-f98fc42b6f8f
md"""
### Question 4
Use the factorization A = QR to find the least-squares solution of Ax = b
"""

# ╔═╡ 8a6003ea-95d4-4436-856f-8cb411822953
A_4 = [
	2 3;
	2 4;
	1 1
]

# ╔═╡ ebfd8748-6fc7-467f-9eb1-7173f87c5d95
Q_4 = [
	2/3 -1/3;
	2/3 2/3;
	1/3 -2/3
]

# ╔═╡ 3b7095b2-c845-416f-b713-a61418d1e191
R_4 = [
	3 5;
	0 1
]

# ╔═╡ cfbb7528-ab01-4c3f-acbc-3505c5cd2402
b_4 = [
	8;
	7;
	9
]

# ╔═╡ 5291471d-d05b-4790-89d0-e7d17f94b638
A_4T = transpose(A_4)

# ╔═╡ a4559714-44bc-4228-b5d7-deb8290a3f76
transpose(R_4) * transpose(Q_4)

# ╔═╡ b4e9e19f-fa26-4d5d-902a-4e5e1c84a41f
A_4T * A_4

# ╔═╡ a1720701-d7f0-49ed-8cb2-cda911f073db
A_4T * b_4

# ╔═╡ 1a264cf4-7fa5-4160-8935-484099234c5c
xhat_4 = inv(A_4T * A_4) * A_4T * b_4

# ╔═╡ 221e5058-bf6e-4a55-a0eb-9b74c296635b
md"""
We get xhat here, but I'm not sure how the idea that A = QR -> A^T = R^T Q^T would be helpful
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
RowEchelon = "af85af4c-bcd5-5d23-b03a-a909639aa875"

[compat]
RowEchelon = "~0.2.1"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.1"
manifest_format = "2.0"
project_hash = "43c6886b3c1f813ef6e6033c2f55ba9dc0470a1a"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.11.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.27+1"

[[deps.RowEchelon]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f479526c4f6efcbf01e7a8f4223d62cfe801c974"
uuid = "af85af4c-bcd5-5d23-b03a-a909639aa875"
version = "0.2.1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.11.0+0"
"""

# ╔═╡ Cell order:
# ╠═83366998-96f8-11ef-0e41-3383f6e4b03c
# ╟─66475f78-8f03-4f6a-9256-2aef9a41dbf5
# ╟─122aae19-ef60-4905-9482-da9364c35ac5
# ╠═966d747c-6a35-4d4e-94b0-6685bd1300fd
# ╠═b1642481-a85c-4a8a-89a9-2e4b92282b32
# ╠═f2f08fa8-81dc-4b19-9259-5cab4dd10a7e
# ╠═87ffc45c-24a4-4b72-beef-5fe0f0146979
# ╠═9d2588fb-fbe3-4a58-a1c8-b628adc27d40
# ╟─fbed8fec-7eb8-4be9-a25a-1ba6ab9631ba
# ╟─616a15f4-7244-4d99-8d30-ef55ee5ff297
# ╟─041cf614-9a30-4c4f-b05e-08bbdd0022b1
# ╠═8f66fe04-0879-4ee7-a87e-067af86a6eb7
# ╠═2bd52e1b-ca2d-4232-b834-c9c5dc6f0c88
# ╟─f8a2da11-cfd9-42c3-b2f7-573ffa728925
# ╠═cd3e4ad2-81dd-4161-9bd7-6255a171d884
# ╠═90f4caf1-ffec-40d7-9699-24f25fb7833d
# ╠═a50108d0-7b4f-4b37-9bdd-2fb511d7f3d6
# ╠═ef9f311e-dbb2-4008-af80-eaddcc66a249
# ╠═8f1b175c-756f-4627-a5c1-cdc67809a8b5
# ╟─54168962-b4d6-46cf-b94d-f98fc42b6f8f
# ╠═8a6003ea-95d4-4436-856f-8cb411822953
# ╠═ebfd8748-6fc7-467f-9eb1-7173f87c5d95
# ╠═3b7095b2-c845-416f-b713-a61418d1e191
# ╠═cfbb7528-ab01-4c3f-acbc-3505c5cd2402
# ╠═5291471d-d05b-4790-89d0-e7d17f94b638
# ╠═a4559714-44bc-4228-b5d7-deb8290a3f76
# ╠═b4e9e19f-fa26-4d5d-902a-4e5e1c84a41f
# ╠═a1720701-d7f0-49ed-8cb2-cda911f073db
# ╠═1a264cf4-7fa5-4160-8935-484099234c5c
# ╟─221e5058-bf6e-4a55-a0eb-9b74c296635b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
