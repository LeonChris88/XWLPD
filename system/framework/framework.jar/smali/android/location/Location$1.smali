.class final Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
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
        "Landroid/location/Location;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$002(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$102(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$202(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroid/location/Location;->access$302(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$402(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Landroid/location/Location;->access$502(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$602(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v0, v2}, Landroid/location/Location;->access$702(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$802(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    invoke-static {v0, v3}, Landroid/location/Location;->access$902(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$1002(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/location/Location;->access$1102(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .locals 1

    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
