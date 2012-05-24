.class Lcom/sec/android/app/calculator/Calculator$5;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$5;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$5;->this$0:Lcom/sec/android/app/calculator/Calculator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/Calculator;->access$702(Lcom/sec/android/app/calculator/Calculator;Z)Z

    return-void
.end method
