.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 710
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v1, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    const v2, 0x7f12078d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "screenTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 719
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "localeNames":Ljava/lang/String;
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 721
    .local v5, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v6, "phone_language"

    iput-object v6, v5, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 722
    const v6, 0x7f1209e2

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 723
    iput-object v3, v5, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 724
    iput-object v3, v5, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 725
    iput-object v2, v5, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 726
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v3
    .end local v5
    :cond_0
    const/4 v3, 0x0

    .line 739
    .local v3, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 740
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 741
    const-string v5, "user_dict_settings"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 742
    const v5, 0x7f120faa

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 743
    iput-object v2, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 744
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_1
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 749
    const-string v5, "keyboard_settings"

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 750
    const v5, 0x7f12073d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 751
    iput-object v2, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 752
    const v5, 0x7f120768

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 753
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    nop

    .line 756
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v5

    .line 757
    .local v5, "immValues":Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v5}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 760
    invoke-virtual {v5, v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v7, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v7, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v3, v7

    .line 762
    const-string v7, "current_input_method"

    iput-object v7, v3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 763
    const v7, 0x7f120440

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 764
    iput-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 765
    iput-object v6, v3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 766
    iput-object v2, v3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 767
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v7, "input_method"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 773
    .local v7, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    .line 774
    .local v8, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v8, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 775
    .local v10, "inputMethodCount":I
    :goto_0
    move-object v11, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v11, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    :goto_1
    if-ge v3, v10, :cond_3

    .line 776
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 777
    .local v12, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 778
    invoke-virtual {v7, v12, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v13

    .line 779
    .local v13, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-static {v13, v0, v12}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v14

    .line 782
    .local v14, "summary":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v15

    .line 783
    .local v15, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v9, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v5

    iget-object v5, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .end local v5
    .local v18, "immValues":Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    invoke-direct {v4, v9, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .local v4, "componentName":Landroid/content/ComponentName;
    new-instance v5, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v5, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v11, v5

    .line 787
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 789
    iput-object v14, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 790
    iput-object v14, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 791
    iput-object v2, v11, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 792
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    .end local v4
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v18

    const/4 v4, 0x1

    goto :goto_1

    .line 796
    .end local v3
    .end local v18
    .restart local v5
    :cond_3
    move-object/from16 v18, v5

    .end local v5
    .restart local v18
    const-string v3, "input"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    .line 798
    .local v3, "inputManager":Landroid/hardware/input/InputManager;
    const/4 v4, 0x0

    .line 800
    .local v4, "hasHardKeyboards":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v5

    .line 801
    .local v5, "devices":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v9, v17

    .end local v17
    .local v9, "i":I
    array-length v12, v5

    if-ge v9, v12, :cond_8

    .line 802
    aget v12, v5, v9

    invoke-static {v12}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v12

    .line 803
    .local v12, "device":Landroid/view/InputDevice;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v12}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v13

    if-nez v13, :cond_4

    .line 804
    nop

    .line 801
    move-object/from16 v19, v3

    goto :goto_5

    .line 807
    :cond_4
    const/4 v4, 0x1

    .line 809
    invoke-virtual {v12}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v13

    .line 810
    .local v13, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    nop

    .line 811
    invoke-virtual {v3, v13}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v14

    .line 812
    .local v14, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 813
    invoke-virtual {v3, v14}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v15

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 816
    .local v15, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_3
    if-eqz v15, :cond_6

    .line 817
    invoke-virtual {v15}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v16

    .line 819
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v19, v3

    goto :goto_4

    .end local v16
    :cond_6
    move-object/from16 v19, v3

    const v3, 0x7f120738

    .end local v3
    .local v19, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16
    :goto_4
    move-object/from16 v3, v16

    .line 822
    .end local v16
    .local v3, "summary":Ljava/lang/String;
    move/from16 v20, v4

    new-instance v4, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v4
    .local v20, "hasHardKeyboards":Z
    invoke-direct {v4, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 823
    .end local v11
    .local v4, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v12}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 824
    invoke-virtual {v12}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 825
    iput-object v3, v4, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 826
    iput-object v3, v4, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 827
    iput-object v2, v4, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 828
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v3
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    move-object v11, v4

    move/from16 v4, v20

    goto :goto_5

    .end local v19
    .end local v20
    .local v3, "inputManager":Landroid/hardware/input/InputManager;
    .local v4, "hasHardKeyboards":Z
    .restart local v11
    :cond_7
    move-object/from16 v19, v3

    .end local v3
    .restart local v19
    :goto_5
    add-int/lit8 v17, v9, 0x1

    .end local v9
    .restart local v17
    move-object/from16 v3, v19

    goto :goto_2

    .line 831
    .end local v17
    .end local v19
    .restart local v3
    :cond_8
    move-object/from16 v19, v3

    .end local v3
    .restart local v19
    if-eqz v4, :cond_9

    .line 833
    new-instance v3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v3, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v11, v3

    .line 834
    const-string v3, "builtin_keyboard_settings"

    iput-object v3, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 835
    const v3, 0x7f120345

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 837
    iput-object v2, v11, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 838
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_9
    new-instance v3, Landroid/speech/tts/TtsEngines;

    invoke-direct {v3, v0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 843
    .local v3, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual {v3}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 844
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v11, v9

    .line 845
    const-string v9, "tts_settings"

    iput-object v9, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 846
    const v9, 0x7f120ec5

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 847
    iput-object v2, v11, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 848
    const v9, 0x7f12077d

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 849
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_a
    new-instance v9, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v9, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 854
    .end local v11
    .local v9, "indexable":Lcom/android/settings/search/SearchIndexableRaw;
    const-string v11, "pointer_settings_category"

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 855
    const v11, 0x7f1209f4

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 856
    iput-object v2, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 857
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v11, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v11, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v9, v11

    .line 860
    const-string v11, "pointer_speed"

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 861
    const v11, 0x7f1209f5

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 862
    iput-object v2, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 863
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 867
    new-instance v11, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v11, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object v9, v11

    .line 868
    const-string v11, "vibrate_input_devices"

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 869
    const v11, 0x7f120fdc

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 870
    const v11, 0x7f120fdd

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 871
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 872
    iput-object v2, v9, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 873
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_b
    return-object v1
.end method
