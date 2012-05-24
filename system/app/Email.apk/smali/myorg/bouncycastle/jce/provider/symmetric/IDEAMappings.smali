.class public Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;
.super Ljava/util/HashMap;
.source "IDEAMappings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AlgorithmParameterGenerator.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AlgorithmParameterGenerator.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AlgorithmParameters.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParams"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AlgorithmParameters.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParams"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$ECB"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$PBEWithSHAAndIDEA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecretKeyFactory.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$PBEWithSHAAndIDEAKeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.IDEAMAC"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$Mac"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Mac.IDEA"

    const-string v1, "IDEAMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Mac.IDEAMAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$CFB8Mac"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Mac.IDEA/CFB8"

    const-string v1, "IDEAMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
