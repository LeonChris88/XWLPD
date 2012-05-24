.class public Ljavax/activation/ActivationDataFlavor;
.super Lmyjava/awt/datatransfer/DataFlavor;
.source "ActivationDataFlavor.java"


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private representationClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    const-class v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljavax/activation/ActivationDataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method
