.class Lcom/android/phone/EditFdnContactScreen$9;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v5, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0e02cb

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$9$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$9$1;-><init>(Lcom/android/phone/EditFdnContactScreen$9;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0e014d

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$9$2;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$9$2;-><init>(Lcom/android/phone/EditFdnContactScreen$9;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    const v2, 0x7f0e017a

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$9$3;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$9$3;-><init>(Lcom/android/phone/EditFdnContactScreen$9;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1200(Lcom/android/phone/EditFdnContactScreen;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0, v8}, Lcom/android/phone/EditFdnContactScreen;->access$1302(Lcom/android/phone/EditFdnContactScreen;Z)Z

    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1500(Lcom/android/phone/EditFdnContactScreen;)Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/EditFdnContactScreen;->access$1400()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0, v8}, Lcom/android/phone/EditFdnContactScreen;->access$1600(Lcom/android/phone/EditFdnContactScreen;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$1700(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$9;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto/16 :goto_0
.end method
