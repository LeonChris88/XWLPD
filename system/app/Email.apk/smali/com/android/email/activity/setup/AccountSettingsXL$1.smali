.class Lcom/android/email/activity/setup/AccountSettingsXL$1;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$402(Lcom/android/email/activity/setup/AccountSettingsXL;Z)Z

    return-void
.end method
