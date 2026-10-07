.class Lcom/android/settings/network/ApnSettings$2;
.super Landroid/app/ProgressDialog;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/network/ApnSettings;
    .param p2, "x0"    # Landroid/content/Context;

    .line 722
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$2;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 724
    const/4 v0, 0x1

    return v0
.end method
