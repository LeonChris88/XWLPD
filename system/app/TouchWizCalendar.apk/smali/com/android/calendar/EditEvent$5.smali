.class Lcom/android/calendar/EditEvent$5;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->showTimezoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$5;->val$lv:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent$5;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$5;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$5;->val$lv:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2000(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
