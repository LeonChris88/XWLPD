.class final Lcom/seven/Z7/common/Z7EmailId$1;
.super Ljava/lang/Object;
.source "Z7EmailId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7EmailId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/seven/Z7/common/Z7EmailId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7EmailId;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v4, Lcom/seven/Z7/common/Z7EmailId;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/seven/Z7/common/Z7EmailId;-><init>(IIJ)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7EmailId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/Z7EmailId;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/seven/Z7/common/Z7EmailId;
    .locals 1

    new-array v0, p1, [Lcom/seven/Z7/common/Z7EmailId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/Z7EmailId$1;->newArray(I)[Lcom/seven/Z7/common/Z7EmailId;

    move-result-object v0

    return-object v0
.end method
