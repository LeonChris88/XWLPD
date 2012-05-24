.class public Lcom/android/email/data/ClosingMatrixCursor;
.super Landroid/database/MatrixCursor;
.source "ClosingMatrixCursor.java"


# instance fields
.field private final mInnerCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-super {p0}, Landroid/database/MatrixCursor;->close()V

    return-void
.end method
