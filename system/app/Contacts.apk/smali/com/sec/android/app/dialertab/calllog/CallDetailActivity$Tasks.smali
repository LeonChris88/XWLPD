.class public final enum Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
.super Ljava/lang/Enum;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

.field public static final enum DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

.field public static final enum MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

.field public static final enum REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

.field public static final enum UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    const-string v1, "MARK_VOICEMAIL_READ"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    const-string v1, "DELETE_VOICEMAIL_AND_FINISH"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    const-string v1, "REMOVE_FROM_CALL_LOG_AND_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    const-string v1, "UPDATE_PHONE_CALL_DETAILS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
    .locals 1

    const-class v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;
    .locals 1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    invoke-virtual {v0}, [Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$Tasks;

    return-object v0
.end method
