.class Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->access$000(Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    const/4 v0, 0x0

    return-object v0
.end method