.class public Lcom/seven/Z7/common/im/Z7ImCallbackFilter;
.super Lcom/seven/Z7/common/Z7CallbackFilter;
.source "Z7ImCallbackFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/im/Z7ImCallbackFilter$2;,
        Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/im/Z7ImCallbackFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntData:I

.field private mType:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->valueOf(Ljava/lang/String;)Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;-><init>(Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->mIntData:I

    return-void
.end method

.method public constructor <init>(Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/seven/Z7/common/Z7CallbackFilter;-><init>(I)V

    iput-object p2, p0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->mUserId:Ljava/lang/String;

    iput-object p1, p0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->mType:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->mType:Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;

    invoke-virtual {v0}, Lcom/seven/Z7/common/im/Z7ImCallbackFilter$ImFilterType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/seven/Z7/common/im/Z7ImCallbackFilter;->mIntData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
