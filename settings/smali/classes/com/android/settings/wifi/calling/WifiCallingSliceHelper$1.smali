.class Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;
.super Ljava/lang/Object;
.source "WifiCallingSliceHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->isWifiCallingEnabled(Lcom/android/ims/ImsManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;Lcom/android/ims/ImsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    .line 168
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    iput-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
