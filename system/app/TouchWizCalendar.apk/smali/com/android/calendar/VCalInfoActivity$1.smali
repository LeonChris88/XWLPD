.class Lcom/android/calendar/VCalInfoActivity$1;
.super Ljava/lang/Object;
.source "VCalInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/VCalInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/VCalInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/VCalInfoActivity;->access$000(Lcom/android/calendar/VCalInfoActivity;)Lcom/android/calendar/vcal/VCalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/vcal/VCalManager;->save()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v1}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/VCalInfoActivity$1;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v1}, Lcom/android/calendar/VCalInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
