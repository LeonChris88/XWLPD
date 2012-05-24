.class public Lcom/android/emailcommon/service/EmailServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private final mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IEmailService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$21;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLcom/android/emailcommon/service/OoODataList;)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailServiceProxy$6;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "autoDiscover"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-class v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoDiscover returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autodiscover_error_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeSmsSettings(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$22;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$15;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "deleteAccountPIMData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public emptyTrash(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$17;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$16;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$16;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLjava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public getAliasFromMap(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$2;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "getAliasFromMap"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getApiLevel()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hostChanged(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$10;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "hostChanged"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public loadAttachment(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$1;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JZ)V

    const-string v1, "loadAttachment"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public loadMore(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$13;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public loadMoreCancel()V
    .locals 1

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$23;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/EmailServiceProxy$23;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$20;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/emailcommon/service/EmailServiceProxy$20;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJ[BI)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public moveMessage(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$14;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailServiceProxy$14;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJ)V

    const-string v1, "moveMessage"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p1}, Lcom/android/emailcommon/service/IEmailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    return-void
.end method

.method public refreshIRMTemplates(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$25;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$26;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/emailcommon/service/EmailServiceProxy$26;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public sendMeetingEditedResponse(JJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$12;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$12;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJI)V

    const-string v1, "sendMeetingEditedResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$11;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JI)V

    const-string v1, "sendMeetingResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public sendMessageCancel([JJJ)V
    .locals 7

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$24;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$24;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;[JJJ)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public sendRecoveryPassword(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$18;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$9;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    const-string v1, "setCallback"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public setDeviceInfo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$19;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    return-void
.end method

.method public setLogging(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$8;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;I)V

    const-string v1, "setLogging"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public startSync(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$3;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JZ)V

    const-string v1, "startSync"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public stopSync(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$4;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "stopSync"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public updateFolderList(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$7;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "updateFolderList"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/emailcommon/service/EmailServiceProxy$5;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v1, "validate"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "validate_result_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-class v1, Lcom/android/emailcommon/service/PolicySet;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validate returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "validate_result_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
