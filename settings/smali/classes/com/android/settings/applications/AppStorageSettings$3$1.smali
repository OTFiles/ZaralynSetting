.class Lcom/android/settings/applications/AppStorageSettings$3$1;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppStorageSettings$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/AppStorageSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/applications/AppStorageSettings$3;

    .line 743
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3$1;->this$1:Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3$1;->this$1:Lcom/android/settings/applications/AppStorageSettings$3;

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/AutoPreInstallFtpListApkService;->GantPermisssionForAllReadboyApps(Ljava/lang/String;)V

    .line 747
    return-void
.end method
