.class Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    .line 124
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPackageAdded$0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method public static synthetic lambda$onPackageModified$1(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method public static synthetic lambda$onPackageRemoved$2(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 127
    new-instance v0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$FkWp-TdrMINB6fYhO2TMWiQylcc;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$FkWp-TdrMINB6fYhO2TMWiQylcc;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$25IAggSj280QPpgEn1surevHwi4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$25IAggSj280QPpgEn1surevHwi4;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 137
    new-instance v0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$wTLnu3hVgtYHDTidiWNsKDdM5mo;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
