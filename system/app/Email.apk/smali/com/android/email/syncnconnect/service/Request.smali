.class public Lcom/android/email/syncnconnect/service/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mType:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/Request;->mType:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/Request;->mData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/Request;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/Request;->mType:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    return-object v0
.end method

.method public final setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/service/Request;->mData:Landroid/os/Bundle;

    return-void
.end method

.method public final setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    .locals 3

    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding into RequestQueue :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/email/syncnconnect/service/Request;->mType:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    return-void
.end method
