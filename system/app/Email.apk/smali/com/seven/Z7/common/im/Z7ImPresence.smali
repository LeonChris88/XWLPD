.class public Lcom/seven/Z7/common/im/Z7ImPresence;
.super Ljava/lang/Object;
.source "Z7ImPresence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/seven/Z7/common/im/Z7ImPresence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inactiveStatus:I

.field private inactiveStatusText:Ljava/lang/String;

.field private isLogin:Z

.field private mStatus:I

.field private mStatusText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/seven/Z7/common/im/Z7ImPresence$1;

    invoke-direct {v0}, Lcom/seven/Z7/common/im/Z7ImPresence$1;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/im/Z7ImPresence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatus:I

    iput p1, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatus:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/seven/Z7/common/im/Z7ImPresence;-><init>(I)V

    iput-object p2, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatusText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/seven/Z7/common/im/Z7ImPresence;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatus:I

    iput-object p4, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatusText:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->isLogin:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v5, :cond_0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/seven/Z7/common/im/Z7ImPresence;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->mStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->inactiveStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/seven/Z7/common/im/Z7ImPresence;->isLogin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
