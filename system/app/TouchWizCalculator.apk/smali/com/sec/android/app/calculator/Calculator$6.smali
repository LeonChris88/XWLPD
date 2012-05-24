.class Lcom/sec/android/app/calculator/Calculator$6;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/Calculator;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$6;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$6;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/calculator/Calculator;->setTextSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$6;->this$0:Lcom/sec/android/app/calculator/Calculator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/calculator/Calculator;->removeDialog(I)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$6;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/Calculator;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$6;->this$0:Lcom/sec/android/app/calculator/Calculator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/Calculator;->access$702(Lcom/sec/android/app/calculator/Calculator;Z)Z

    :cond_0
    return-void
.end method
