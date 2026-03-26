using Unitful

# Problem 4
E_2(E_0, M_1, M_2, ϕ) = E_0 * (4 * M_1 * M_2 / (M_1 + M_2)^2) * cos(ϕ)^2

# Part a 
E_0 = 2u"MeV"
M_1 = 1u"u"
M_2 = 1u"u"
ϕ = ϕ_a = 10u"deg"
E = E_2_a = E_2(E_0, M_1, M_2, ϕ)
println("Problem 4a, ϕ = $ϕ: $E")

# Part b 
E_0 = 2u"MeV"
M_1 = 1u"u"
M_2 = 1u"u"
ϕ = ϕ_b = ϕ_b = 30u"deg"
E = E_2_b = E_2(E_0, M_1, M_2, ϕ)
println("Problem 4b, ϕ = $ϕ: $E")

# Part c 
E_0 = 2u"MeV"
M_1 = 1u"u"
M_2 = 1u"u"
ϕ = ϕ_c = 60u"deg"
E = E_2_c = E_2(E_0, M_1, M_2, ϕ)
println("Problem 4c, ϕ = $ϕ: $E")

# Part d 
E_0 = 2u"MeV"
M_1 = 1u"u"
M_2 = 1u"u"
ϕ = ϕ_d = 88u"deg"
E = E_2_d = E_2(E_0, M_1, M_2, ϕ)
println("Problem 4d, ϕ = $ϕ: $E\n")

# Problem 5a
E2 = E_2_a
E_1 = E_0 - E2
ϕ = ϕ_a
θ = θ_a = uconvert(u"deg", asin(sin(ϕ) * (M_1 * E_1 / (M_2 * E2))^(-1 / 2)))
println("Problem 5a, ϕ = $(round(typeof(ϕ), digits=5, ϕ)), E₁ = $(round(typeof(E_1), digits=5, E_1)), E₂ = $(round(typeof(E2), digits=5, E2)): $(round(typeof(θ), digits=5, θ)) ")

# Problem 5b
E2 = E_2_b
E_1 = E_0 - E2
ϕ = ϕ_b
θ = θ_b = uconvert(u"deg", asin(sin(ϕ) * (M_1 * E_1 / (M_2 * E2))^(-1 / 2)))
println("Problem 5b, ϕ = $(round(typeof(ϕ), digits=5, ϕ)), E₁ = $(round(typeof(E_1), digits=5, E_1)), E₂ = $(round(typeof(E2), digits=5, E2)): $(round(typeof(θ), digits=5, θ)) ")

# Problem 5c
E2 = E_2_c
E_1 = E_0 - E2
ϕ = ϕ_c
θ = θ_c = uconvert(u"deg", asin(sin(ϕ) * (M_1 * E_1 / (M_2 * E2))^(-1 / 2)))
println("Problem 5c, ϕ = $(round(typeof(ϕ), digits=5, ϕ)), E₁ = $(round(typeof(E_1), digits=5, E_1)), E₂ = $(round(typeof(E2), digits=5, E2)): $(round(typeof(θ), digits=5, θ)) ")

# Problem 5d
E2 = E_2_d
E_1 = E_0 - E2
ϕ = ϕ_d
θ = θ_d = uconvert(u"deg", asin(sin(ϕ) * (M_1 * E_1 / (M_2 * E2))^(-1 / 2)))
println("Problem 5d, ϕ = $(round(typeof(ϕ), digits=5, ϕ)), E₁ = $(round(typeof(E_1), digits=5, E_1)), E₂ = $(round(typeof(E2), digits=5, E2)): $(round(typeof(θ), digits=5, θ))\n")

# Problem 6a Fe
E_0 = 4u"MeV"
M_1 = 56u"u"
M_2 = M_2_a1 = 56u"u"
ϕ = 0u"deg"
E2 = E2_6a1 = E_2(E_0, M_1, M_2, ϕ)
println("Problem 6a Fe, M₂ = $M_2: E2 = $E2")

# Problem 6a Cr
E_0 = 4u"MeV"
M_1 = 56u"u"
M_2 = M_2_a2 = 52u"u"
ϕ = 0u"deg"
E2 = E2_6a2 = E_2(E_0, M_1, M_2, ϕ)
println("Problem 6a Cr, M₂ = $M_2: E2 = $E2")

# Problem 6a Mo
E_0 = 4u"MeV"
M_1 = 56u"u"
M_2 = M_2_a3 = 96u"u"
ϕ = 0u"deg"
E2 = E2_6a3 = E_2(E_0, M_1, M_2, ϕ)
println("Problem 6a Mo, M₂ = $M_2: E2 = $E2\n")

E_0_f(E2, M_1, M_2, ϕ) = E2 * (M_1 + M_2)^2 / (4 * M_1 * M_2 * cos(ϕ)^2)

# Problem 6b Fe
M_1 = 1u"u"
M_2 = M_2_a1
ϕ = 0u"deg"
E2 = E2_6a1
E0 = E_0b1 = E_0_f(E2_6a1, M_1, M_2, ϕ)
println("Problem 6b Fe, M₂ = $M_2, E2 = $E2: E₀ = $E0")

# Problem 6b Cr
M_1 = 1u"u"
M_2 = M_2_a2
ϕ = 0u"deg"
E2 = E2_6a2
E0 = E_0b2 = E_0_f(E2, M_1, M_2, ϕ)
println("Problem 6b Cr, M₂ = $M_2, E2 = $E2: E₀ = $E0")

# Problem 6b Mo
M_1 = 1u"u"
M_2 = M_2_a3
ϕ = 0u"deg"
E2 = E2_6a3
E0 = E_0b3 = E_0_f(E2, M_1, M_2, ϕ)
println("Problem 6b Mo, M₂ = $M_2, E2 = $E2: E₀ = $E0")
