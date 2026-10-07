.class public interface abstract Lcom/readboy/store/AppUpdate/CheckImpl;
.super Ljava/lang/Object;
.source "CheckImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;
    }
.end annotation


# static fields
.field public static final CHECK_ERROR:I = 0x1

.field public static final CHECK_ISLASTEST:I = 0x3

.field public static final CHECK_NEED_UPDATE:I = 0x2


# virtual methods
.method public abstract initApUpdateInfo(Lcom/readboy/store/AppUpdate/ApInfo;)V
.end method

.method public abstract isShowDialogWhenNormalUpdate(Z)V
.end method

.method public abstract releaseUpdate()V
.end method

.method public abstract releaseUpdate(Z)V
.end method

.method public abstract setOnCheckListener(Lcom/readboy/store/AppUpdate/CheckImpl$OnCheckListener;)V
.end method

.method public abstract startCheck(Landroid/app/Activity;)V
.end method
