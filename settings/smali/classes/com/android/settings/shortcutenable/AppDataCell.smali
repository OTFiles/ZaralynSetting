.class public Lcom/android/settings/shortcutenable/AppDataCell;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    .local p0, "this":Lcom/android/settings/shortcutenable/AppDataCell;, "Lcom/android/settings/shortcutenable/AppDataCell<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
