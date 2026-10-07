.class public Lcom/android/settings/parentlauncher/AppDataCell;
.super Ljava/lang/Object;
.source "AppDataCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public appPackageName:Ljava/lang/String;

.field public appVersionCode:I

.field public appVersionName:Ljava/lang/String;

.field public app_Name:Ljava/lang/String;

.field public mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    .local p0, "this":Lcom/android/settings/parentlauncher/AppDataCell;, "Lcom/android/settings/parentlauncher/AppDataCell<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/parentlauncher/AppDataCell;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method public isCanEnableClick()Z
    .locals 4

    .line 24
    .local p0, "this":Lcom/android/settings/parentlauncher/AppDataCell;, "Lcom/android/settings/parentlauncher/AppDataCell<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/parentlauncher/AppDataCell;->mLastClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
