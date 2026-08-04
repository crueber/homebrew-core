class Skillspector < Formula
  include Language::Python::Virtualenv

  desc "Security scanner for AI agent skills"
  homepage "https://github.com/NVIDIA/SkillSpector"
  url "https://github.com/NVIDIA/SkillSpector/archive/refs/tags/v2.10.0.tar.gz"
  sha256 "5c8c4d32587928c170b514a6391d39bdb5845ae0bdf1603ed2bc11e44fa00d2b"
  license "Apache-2.0"

  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "certifi" => :no_linkage
  depends_on "cryptography" => :no_linkage
  depends_on "libyaml"
  depends_on "numpy"
  depends_on "openssl@3"
  depends_on "pydantic" => :no_linkage
  depends_on "python@3.14"
  depends_on "xxhash"
  depends_on "zstd"

  pypi_packages exclude_packages: %w[certifi cryptography numpy pydantic]

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/62/f8/6f0560884b5363848347bd640b6c1d04abc25e7aa61787a232f790c6b60a/anthropic-0.125.0.tar.gz"
    sha256 "e0cdd336580cb7411c1cdab69f80973e9bf4bff7f8e08141811d46307d45c682"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/61/cc/a381afa6efea9f496eff839d4a6a1aed3bfafc7b3ab4b0d1b243a12573dd/anyio-4.14.2.tar.gz"
    sha256 "cfa139f3ed1a23ee8f88a145ddb5ac7605b8bbfd8592baacd7ce3d8bb4313c7f"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/cc/97/9ef9b949f253b197c813c57ab58578572d20dbacedceb5a5f4516ea628cb/boto3-1.43.80.tar.gz"
    sha256 "384d522e2ce722266afceea8ab3e618e16695b358ebe32b45e0a2109fcd53a28"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/b5/94/de291ad81495365682722efa9397c54c7b666f7bf1ae4064d26e40a55296/botocore-1.43.80.tar.gz"
    sha256 "c021e60df26d17e9a8db05fa5071669449c8fd15e0fb4374f56a6c17d553f89b"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/76/d4/81420972a676e8ffea40450d8c8c92943e7218a78fe9b64359836cc9876b/click-8.4.2.tar.gz"
    sha256 "9a6cea6e60b17ebe0a44c5cc636d94f09bd66142c1cd7d8b4cd731c4917a15f6"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/e0/4d/f332313098c1de1b2d2ff91cf2674415cc7cddab2ca1b01ae29774bd5fdf/docstring_parser-0.18.0.tar.gz"
    sha256 "292510982205c12b1248696f44959db3cdd1740237a968ea1e2e7a900eeb2015"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/be/ad/f4f0e57345f1870f3e8cb624e058d7eca6e5a27d33bcc3311d9b618734cd/httpcore2-2.12.0.tar.gz"
    sha256 "9293522bba0aa7c4c8e9e3f040c16575bd8868e155a77fa30c7a9085a5eae648"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/7f/f8/579a8b51e42e38ee32647df9f08aa25643ae788e275cc625b199829c4671/httpx2-2.12.0.tar.gz"
    sha256 "7631fe9887a8a2275f4a2540e053aa670fcc50742864a9ae7c66e609fdcf12cf"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/5f/f7/abb373e5757eaec4b922b92f97ec8d6d7e057cf06778247604fbc4e7c3f3/idna-3.19.tar.gz"
    sha256 "5e0811a4383b21dc5838069f801c4fb62113b7447663d2530d2bd6e77b49bf15"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/1d/1f/10936e16d8860c70698a1aa939a46aa0224813b782bce4e000e637da0b2d/jiter-0.16.0.tar.gz"
    sha256 "7b24c3492c5f4f84a37946ad9cf504910cf6a782d6a4e0689b6673c5894b4a1c"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/d3/59/322338183ecda247fb5d1763a6cbe46eff7222eaeebafd9fa65d4bf5cb11/jmespath-1.1.0.tar.gz"
    sha256 "472c87d80f36026ae83c6ddd0f1d05d4e510134ed462851fd5f754c8c3cbb88d"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/18/c7/af399a2e7a67fd18d63c40c5e62d3af4e67b836a2107468b6a5ea24c4304/jsonpointer-3.1.1.tar.gz"
    sha256 "0b801c7db33a904024f6004d526dcc53bbb8a4a0f4e32bfd10beadf60adf1900"
  end

  resource "langchain-anthropic" do
    url "https://files.pythonhosted.org/packages/15/a5/207e2495533cbc4383c7b7e18636869765bb7a9308edc29cfe80b51339a8/langchain_anthropic-1.6.1.tar.gz"
    sha256 "8325abbbb33acac9e401a4cfabeb2584e67d3f60ef739aea4e7ee80f317d6d64"
  end

  resource "langchain-aws" do
    url "https://files.pythonhosted.org/packages/60/eb/0443568d23be1857df8f549c69acab0adab614adf91b5f13e5a3d796637f/langchain_aws-1.7.3.tar.gz"
    sha256 "f2b148d5838aab04924574be20e17b2ef0568520861a11fe61b948fc7b143ca2"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/97/88/ebc98df187c525d729725ab39759337c56d5d2803423632376aa35bde899/langchain_core-1.6.0.tar.gz"
    sha256 "dc72e36678ed26683ec0ad8829b44011fba461d10f9b31dbd9110215e5ec2333"
  end

  resource "langchain-openai" do
    url "https://files.pythonhosted.org/packages/58/aa/5b4dbe8f90c44729fb7800bfde113ce1bc7c9687115d2e0d20fb377671e9/langchain_openai-1.6.0.tar.gz"
    sha256 "7c545cc1f2bee048a7e219f375b78cd820b32c876ccf825320e25e1e94132577"
  end

  resource "langchain-protocol" do
    url "https://files.pythonhosted.org/packages/d2/59/b5959aea96faa9146e2e49a7a22882b3528c62efafe9a6a95beab30c2305/langchain_protocol-0.0.18.tar.gz"
    sha256 "ec3e11782f1ed0c9db38e5a9ed01b0e7a0d3fba406faa8aef6594b73c56a63e6"
  end

  resource "langgraph" do
    url "https://files.pythonhosted.org/packages/56/0d/c8e7ee98896659e1b6555db0ab115a9ca899844744645d5d894032bab1d7/langgraph-1.2.11.tar.gz"
    sha256 "9ecfe11e50d338b34b15cf4d8a442642de103e8ae6971320efba84e4542eb363"
  end

  resource "langgraph-checkpoint" do
    url "https://files.pythonhosted.org/packages/dc/e1/089c4c9e0a2fec7f883f82ae8e6a727138d50074cfeb6644bc2d13b1019b/langgraph_checkpoint-4.2.0.tar.gz"
    sha256 "51a593b6bee684b0818e5d6e58e28ab340c6db7794575056ce7bd1b746a84ed7"
  end

  resource "langgraph-prebuilt" do
    url "https://files.pythonhosted.org/packages/29/66/ed9b93f56bc17ef22d551892f0ac2b225a97fe0fcf23a511b857f70d590b/langgraph_prebuilt-1.1.0.tar.gz"
    sha256 "3c579cf6eed2d17f9c157c2d0fcaddcd8688524e7022d3b22b37a3bf4589d528"
  end

  resource "langgraph-sdk" do
    url "https://files.pythonhosted.org/packages/bd/0e/3c0347fd517390e807d9772d2037f9cc65c0227af27f07052ba9c8ebdfa2/langgraph_sdk-0.4.3.tar.gz"
    sha256 "f101cc043ddd7400ceaef66d934c42fa2f0e7d4ea5029754d286260d39038251"
  end

  resource "langsmith" do
    url "https://files.pythonhosted.org/packages/cc/57/7b6c11080c9e082ebf1456a2e2372fae8f23a85a5ae2869bdd5ab9a6507d/langsmith-0.11.1.tar.gz"
    sha256 "47998977366acb3ba3093881fd465cbf11a5f8c2f4e87e40a17dda203f6dedf4"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/7d/9c/ba0c292b4032ede74c249ca314ad64eb1bb5a03a843f6e01facb02f80cd8/openai-3.3.1.tar.gz"
    sha256 "6f22807de1a976c932cecda620e8172a8c3fdbaeed29c7f21564e0c2410edf56"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/0f/f3/742fb1f62b825f2c010697eaf4e828004bc2a81e7e806666989c132c7c42/orjson-3.12.0.tar.gz"
    sha256 "d14203fb1aae2ad9b3d52f8a0e82aeb10197ef1c9bc61da7f358bd70b00123d5"
  end

  resource "ormsgpack" do
    url "https://files.pythonhosted.org/packages/12/0c/f1761e21486942ab9bb6feaebc610fa074f7c5e496e6962dea5873348077/ormsgpack-1.12.2.tar.gz"
    sha256 "944a2233640273bee67521795a73cf1e959538e0dfb7ac635505010455e53b33"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/20/98/04b13f1ddfb63158025291c02e03eb42fbb7acb51d091d541050eb4e35e8/regex-2026.7.19.tar.gz"
    sha256 "7e77b324909c1617cbb4c668677e2c6ae13f44d7c1de0d4f15f2e3c10f3315b5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
    sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/76/43/35e4d8aa320bffe8287fe8f65f578fa2d2db0a64212f0e710dce58267854/s3transfer-0.19.2.tar.gz"
    sha256 "ba0309fd86be3c27dbf78cdd813c13c5e1df16e5874b99d2535ebbdfb9892993"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/47/c6/ee486fd809e357697ee8a44d3d69222b344920433d3b6666ccd9b374630c/tenacity-9.1.4.tar.gz"
    sha256 "adb31d4c263f2bd041081ab33b498309a57c77f9acf2db65aadf0898179cf93a"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/66/62/167a842aa0429d45f5e797354fd4343a96f6043d67d0513c675c7b8d36e6/tiktoken-0.14.0.tar.gz"
    sha256 "231dec90efcdccf1b565a1416107736f1e09b1a08fe736ef9d6363e626d03874"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/53/a3/1585216310e344e8102c22482f6060c7a6ea0322b63e026372e6dcefcfd6/truststore-0.10.4.tar.gz"
    sha256 "9d91bd436463ad5e4ee4aba766628dd6cd7010cf3e2461756b3303710eebc301"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/d3/ae/93d16574e66dfe4c2284ffdaca4b0320ade32858cb2cc586c8dd79f127c5/typer-0.23.2.tar.gz"
    sha256 "a99706a08e54f1aef8bb6a8611503808188a4092808e86addff1828a208af0de"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/53/0c/06f8b233b8fd13b9e5ee11424ef85419ba0d8ba0b3138bf360be2ff56953/urllib3-2.7.0.tar.gz"
    sha256 "231e0ec3b63ceb14667c67be60f2f2c40a518cb38b03af60abc813da26505f4c"
  end

  resource "uuid-utils" do
    url "https://files.pythonhosted.org/packages/e7/91/63938e0e7e7876658e5e40178e7c0735b53527886fe11797a11699c55edd/uuid_utils-0.17.0.tar.gz"
    sha256 "abb5667a36119019b3fa320c4d10c21ebccfcc87c8a739e6a0056cee7f48dde2"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/21/f7/bc3a25c5ec26ce62ce487690becc2f3710bbc7b33338f005ad390db0b986/websockets-16.1.1.tar.gz"
    sha256 "db234eda965dcce15df96bb9709f587cd87d4d52aaf0e80e2f34ec04c7670c57"
  end

  resource "xxhash" do
    url "https://files.pythonhosted.org/packages/f6/a5/1386f35da1475fcaeef42581deae73417c6d2a6a0b2d2e8914de18844dcd/xxhash-4.0.1.tar.gz"
    sha256 "d55bf4ef10eb09b8b6866790e083d26d087d84caa3cc0946ba87c3ca7ecaf7b7"
  end

  resource "yara-python" do
    url "https://files.pythonhosted.org/packages/51/38/347d1fcde4edabd338d5872ca5759ccfb95ff1cf5207dafded981fd08c4f/yara_python-4.5.4.tar.gz"
    sha256 "4c682170f3d5cb3a73aa1bd0dc9ab1c0957437b937b7a83ff6d7ffd366415b9c"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/fd/aa/3e0508d5a5dd96529cdc5a97011299056e14c6505b678fd58938792794b1/zstandard-0.25.0.tar.gz"
    sha256 "7713e1179d162cf5c7906da876ec2ccb9c3a9dcbdffef0cc7f70c3667a205f0b"
  end

  # Traverse ancestor directories with `O_PATH`, which needs only search access.
  # `O_RDONLY` also needs read access on "/", which the Linux sandbox denies.
  # Upstream PR ref, https://github.com/NVIDIA/SkillSpector/pull/443
  patch do
    url "https://github.com/NVIDIA/SkillSpector/commit/bddc8103bdbcca83c1e57ca51dd71e71c0d98487.patch?full_index=1"
    sha256 "ad1b6d0e234944c375daf8e9481557aee6af329113c3a591871060c368787dbf"
    type :unofficial
    resolves "https://github.com/NVIDIA/SkillSpector/pull/443"
  end

  def install
    # Link against the keg rather than the copy vendored in the sdist.
    ENV["XXHASH_LINK_SO"] = "1"

    venv = virtualenv_install_with_resources without: "zstandard"

    # zstandard only uses the system libzstd when told to at build time.
    resource("zstandard").stage do
      args = std_pip_args(prefix: false, build_isolation: true)
      args << "--config-settings=--build-option=--system-zstd"
      system venv.root/"bin/python", "-m", "pip", "install", *args, "."
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillspector --version")

    (testpath/"SKILL.md").write <<~EOS
      # Test Skill
      This is a test skill for Skillspector.
    EOS

    output = shell_output("#{bin}/skillspector scan SKILL.md --no-llm")
    assert_match "SkillSpector Security Report", output
  end
end
