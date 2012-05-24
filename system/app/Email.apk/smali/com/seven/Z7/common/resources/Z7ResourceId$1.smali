.class final Lcom/seven/Z7/common/resources/Z7ResourceId$1;
.super Ljava/lang/Object;
.source "Z7ResourceId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/resources/Z7ResourceId;
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
        "Lcom/seven/Z7/common/resources/Z7ResourceId;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/resources/Z7ResourceId;
    .locals 3

    new-instance v0, Lcom/seven/Z7/common/resources/Z7ResourceId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/seven/Z7/common/resources/Z7ResourceId;-><init>(Lcom/seven/Z7/common/resources/Z7ResourceId$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seven/Z7/common/resources/Z7ResourceId;->access$102(Lcom/seven/Z7/common/resources/Z7ResourceId;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seven/Z7/common/resources/Z7ResourceId;->access$202(Lcom/seven/Z7/common/resources/Z7ResourceId;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seven/Z7/common/resources/Z7ResourceId;->access$302(Lcom/seven/Z7/common/resources/Z7ResourceId;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seven/Z7/common/resources/Z7ResourceId;->access$402(Lcom/seven/Z7/common/resources/Z7ResourceId;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/seven/Z7/common/resources/Z7ResourceId;->access$502(Lcom/seven/Z7/common/resources/Z7ResourceId;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/seven/Z7/common/resources/Z7ResourceId;->access$602(Lcom/seven/Z7/common/resources/Z7ResourceId;J)J

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/resources/Z7ResourceId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/seven/Z7/common/resources/Z7ResourceId;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/seven/Z7/common/resources/Z7ResourceId;
    .locals 1

    new-array v0, p1, [Lcom/seven/Z7/common/resources/Z7ResourceId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/seven/Z7/common/resources/Z7ResourceId$1;->newArray(I)[Lcom/seven/Z7/common/resources/Z7ResourceId;

    move-result-object v0

    return-object v0
.end method
