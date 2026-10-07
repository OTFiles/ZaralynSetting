.class public Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "UsbDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;
    }
.end annotation


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreviousFunctions:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 82
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/widget/CandidateInfo;>;"
    sget-object v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 83
    .local v2, "option":J
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 83
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "title":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v6, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    new-instance v6, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7, v4, v5}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v2
    .end local v4
    .end local v5
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDefaultUsbFunctions()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 71
    const/16 v0, 0x520

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 76
    const v0, 0x7f1500b6

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 58
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 59
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 65
    .local v0, "footer":Lcom/android/settingslib/widget/FooterPreferenceMixin;
    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    .line 66
    .local v1, "pref":Lcom/android/settingslib/widget/FooterPreference;
    const v2, 0x7f120f41

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 67
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 118
    .local v0, "functions":J
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mPreviousFunctions:J

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 120
    const-wide/16 v4, 0x20

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$OnStartTetheringCallback;

    invoke-virtual {v2, v3, v3, v4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDefaultUsbFunctions(J)V

    .line 130
    :cond_1
    :goto_0
    return v3
.end method
