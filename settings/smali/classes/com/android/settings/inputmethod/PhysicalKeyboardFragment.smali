.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private final mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 227
    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->toggleKeyboardShortcutsMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 58
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method static getHardKeyboards(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "keyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 276
    .local v1, "im":Landroid/hardware/input/InputManager;
    if-nez v1, :cond_0

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 279
    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 280
    .local v5, "deviceId":I
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    .line 281
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-nez v7, :cond_1

    .line 282
    goto :goto_1

    .line 284
    :cond_1
    new-instance v7, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 285
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v9

    invoke-static {v6, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getLayoutLabel(Landroid/view/InputDevice;Landroid/content/Context;Landroid/hardware/input/InputManager;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 284
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v5
    .end local v6
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    .line 290
    .local v2, "collator":Ljava/text/Collator;
    new-instance v3, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$E1Pa9yi7mSTmfiefFBHYeSOZEJQ;

    invoke-direct {v3, v2}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$E1Pa9yi7mSTmfiefFBHYeSOZEJQ;-><init>(Ljava/text/Collator;)V

    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 302
    return-object v0
.end method

.method private static getLayoutLabel(Landroid/view/InputDevice;Landroid/content/Context;Landroid/hardware/input/InputManager;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/view/InputDevice;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "im"    # Landroid/hardware/input/InputManager;

    .line 258
    nop

    .line 259
    invoke-virtual {p0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "currentLayoutDesc":Ljava/lang/String;
    const v1, 0x7f120738

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 263
    :cond_0
    invoke-virtual {p2, v0}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 264
    .local v2, "currentLayout":Landroid/hardware/input/KeyboardLayout;
    if-nez v2, :cond_1

    .line 265
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 269
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getHardKeyboards$3(Ljava/text/Collator;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)I
    .locals 3
    .param p0, "collator"    # Ljava/text/Collator;
    .param p1, "a"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    .param p2, "b"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 291
    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 293
    return v0

    .line 295
    :cond_0
    iget-object v1, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 296
    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 297
    if-eqz v0, :cond_1

    .line 298
    return v0

    .line 300
    :cond_1
    iget-object v1, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static synthetic lambda$scheduleUpdateHardKeyboards$0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "newHardKeyboards"    # Ljava/util/List;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$scheduleUpdateHardKeyboards$1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-static {p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "newHardKeyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    new-instance v1, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public static synthetic lambda$updateHardKeyboards$2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "hardKeyboardDeviceInfo"    # Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 178
    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method private registerShowVirtualKeyboardSettingsObserver()V
    .locals 5

    .line 197
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_ime_with_hard_keyboard"

    .line 199
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 202
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    .line 204
    return-void
.end method

.method private scheduleUpdateHardKeyboards()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 190
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 192
    .local v0, "fragment":Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private toggleKeyboardShortcutsMenu()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    .line 216
    return-void
.end method

.method private unregisterShowVirtualKeyboardSettingsObserver()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    return-void
.end method

.method private updateHardKeyboards(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "newHardKeyboards":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;>;"
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 166
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 167
    new-instance v1, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "category":Landroid/support/v7/preference/PreferenceCategory;
    const v2, 0x7f120345

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 169
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    .line 174
    .local v3, "hardKeyboardDeviceInfo":Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;
    new-instance v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 175
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    iget-object v5, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v5, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mLayoutLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v5, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$GzAuWQoIrNRWOGdhye1KALY7EFw;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$GzAuWQoIrNRWOGdhye1KALY7EFw;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 182
    .end local v3
    .end local v4
    goto :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    .line 187
    return-void
.end method

.method private updateShowVirtualKeyboardSwitch()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 212
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 143
    const/16 v0, 0x15a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v1, "input_device_identifier"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 251
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 252
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 254
    .end local v0
    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 82
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f15007f

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->addPreferencesFromResource(I)V

    .line 83
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 84
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 91
    const-string v1, "keyboard_assistance_category"

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 91
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 93
    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v2, "show_virtual_keyboard_switch"

    .line 94
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 93
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 96
    const-string v1, "keyboard_shortcuts_helper"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 128
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    .line 129
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 138
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    .line 139
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 133
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    .line 134
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->scheduleUpdateHardKeyboards()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSettingsObserver()V

    .line 115
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 238
    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 241
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    return-void
.end method
