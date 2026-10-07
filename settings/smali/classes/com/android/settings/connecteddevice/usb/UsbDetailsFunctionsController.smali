.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field static final FUNCTIONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

.field mPreviousFunction:J

.field private mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120f6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120f71

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v2, 0x7f120f6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
    .param p3, "backend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 63
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 64
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    .line 65
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 66
    return-void
.end method

.method private getProfilePreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "titleId"    # I

    .line 78
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    .line 79
    .local v0, "pref":Lcom/android/settings/widget/RadioButtonPreference;
    if-nez v0, :cond_0

    .line 80
    new-instance v1, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 83
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    .line 72
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "usb_details_functions"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 8
    .param p1, "preference"    # Lcom/android/settings/widget/RadioButtonPreference;

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    .local v0, "function":J
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v2

    .line 114
    .local v2, "previousFunction":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 117
    const-wide/16 v4, 0x20

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    iget-wide v5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 121
    invoke-static {v5, v6}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    .line 122
    .local v4, "prevPref":Lcom/android/settings/widget/RadioButtonPreference;
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 123
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 124
    invoke-virtual {p1, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 129
    :cond_0
    iget-object v6, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {v6, v5, v5, v7}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 131
    .end local v4
    goto :goto_0

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 135
    :cond_2
    :goto_0
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 8
    .param p1, "connected"    # Z
    .param p2, "functions"    # J
    .param p4, "powerRole"    # I
    .param p5, "dataRole"    # I

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p5, v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 98
    :goto_1
    sget-object v2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 99
    .local v3, "option":J
    sget-object v5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 100
    .local v5, "title":I
    invoke-static {v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getProfilePreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v6

    .line 102
    .local v6, "pref":Lcom/android/settings/widget/RadioButtonPreference;
    iget-object v7, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v7, v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 103
    cmp-long v7, p2, v3

    if-nez v7, :cond_2

    move v7, v1

    goto :goto_3

    :cond_2
    move v7, v0

    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_4

    .line 105
    :cond_3
    iget-object v7, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 107
    .end local v3
    .end local v5
    :goto_4
    goto :goto_2

    .line 108
    .end local v6
    :cond_4
    return-void
.end method
