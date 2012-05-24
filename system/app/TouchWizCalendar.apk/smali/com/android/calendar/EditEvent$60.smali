.class Lcom/android/calendar/EditEvent$60;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$7500(Lcom/android/calendar/EditEvent;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$7600(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "additional"

    const-string v4, "email-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "app"

    const-string v4, "calendar"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4}, Lcom/android/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
