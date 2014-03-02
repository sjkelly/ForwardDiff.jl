module ForwardDiff
  using DualNumbers
  
  importall Base
  
  export
    # exports for dual_fad
    autodiff,
    # exports for typespecific_fad    
    GraDual,
    gradual,
    value,
    grad,
    jacobian,
    isgradual,
    isconstant,
    iszero,
    FADHessian,
    hessian,
    isfadhessian,
    FADTensor

  include(joinpath("dual_fad", "univariate_range.jl"))
  include(joinpath("dual_fad", "multivariate_range.jl"))
  include(joinpath("typespecific_fad", "GraDual.jl"))
  include(joinpath("typespecific_fad", "FADHessian.jl"))
  include(joinpath("typespecific_fad", "FADTensor.jl"))
end # module ForwardDiff