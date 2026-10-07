.class public Lcom/android/settings/ReadboyCameraOrientationFix;
.super Ljava/lang/Object;
.source "ReadboyCameraOrientationFix.java"


# direct methods
.method public static readInfo(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const-string v0, ""

    const-string v1, "ReadboyCameraOrientationFix readInfo:context == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_0
    const-string v0, ""

    const-string v1, "ReadboyCameraOrientationFix readInfo:fix read info"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.readboy/CameraFix/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "camerafixinfo_2.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const-string v0, "system/readboy/CameraFix/camerafixinfo_2.xml"

    .line 77
    :cond_1
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadboyCameraOrientationFix readInfo_fixpath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x0

    .line 80
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    const-string v3, ""

    const-string v4, "ReadboyCameraOrientationFix readInfo:fix file not exists"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 87
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadboyCameraOrientationFix readInfo_inputStreamError:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v3
    :goto_0
    if-nez v2, :cond_3

    .line 93
    const-string v3, ""

    const-string v4, "ReadboyCameraOrientationFix readInfo:InputStream is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 97
    :cond_3
    invoke-static {v2}, Lcom/android/settings/ReadboyCameraOrientationFix;->readXmlByDOM(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "mCameraFixInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/ReadboyCameraFixInfo;>;"
    invoke-static {p0, v3}, Lcom/android/settings/ReadboyCameraOrientationFix;->saveData(Landroid/content/Context;Ljava/util/List;)V

    .line 99
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadboyCameraOrientationFix readInfo: mCameraFixInfoList size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private static readXmlByDOM(Ljava/io/InputStream;)Ljava/util/List;
    .locals 17
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/ReadboyCameraFixInfo;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 123
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/ReadboyCameraFixInfo;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    move-object v2, v0

    .line 125
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 126
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p0

    :try_start_1
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 128
    .local v4, "dom":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 131
    .local v5, "root":Lorg/w3c/dom/Element;
    const-string v6, "version"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 132
    .local v6, "versions":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_0

    .line 133
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 134
    .local v7, "versionNode":Lorg/w3c/dom/Element;
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ReadboyCameraOrientationFix version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "ver"

    invoke-interface {v7, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v7
    :cond_0
    const-string v7, "package"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 139
    .local v7, "items":Lorg/w3c/dom/NodeList;
    move v9, v8

    .local v9, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_e

    .line 140
    new-instance v10, Lcom/android/settings/ReadboyCameraFixInfo;

    invoke-direct {v10}, Lcom/android/settings/ReadboyCameraFixInfo;-><init>()V

    .line 143
    .local v10, "info":Lcom/android/settings/ReadboyCameraFixInfo;
    invoke-interface {v7, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 145
    .local v11, "infoNode":Lorg/w3c/dom/Element;
    const-string v12, "name"

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/settings/ReadboyCameraFixInfo;->setPackageName(Ljava/lang/String;)V

    .line 148
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 149
    .local v12, "childsNodes":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/settings/ReadboyCameraFixInfo;->setDeleteInfo(Z)V

    .line 151
    move v14, v8

    .local v14, "j":I
    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 152
    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 154
    .local v15, "node":Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v13, :cond_b

    .line 155
    move-object v8, v15

    check-cast v8, Lorg/w3c/dom/Element;

    .line 156
    .local v8, "childNode":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/settings/ReadboyCameraFixInfo;->setDeleteInfo(Z)V

    .line 157
    const-string v13, "CameraInfoOrientation_Front"

    move-object/from16 v16, v0

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .end local v0
    .local v16, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setCameraInfoOrientation_Front(I)V

    goto/16 :goto_2

    .line 159
    :cond_1
    const-string v0, "CameraInfoOrientation_Back"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setCameraInfoOrientation_Back(I)V

    goto/16 :goto_2

    .line 161
    :cond_2
    const-string v0, "Rotation_Front"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setRotation_Front(I)V

    goto/16 :goto_2

    .line 163
    :cond_3
    const-string v0, "Rotation_Back"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setRotation_Back(I)V

    goto/16 :goto_2

    .line 165
    :cond_4
    const-string v0, "Degrees_Front_PORTRAIT"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setDegrees_Front_portrait(I)V

    goto/16 :goto_2

    .line 167
    :cond_5
    const-string v0, "Degrees_Back_PORTRAIT"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setDegrees_Back_portrait(I)V

    goto/16 :goto_2

    .line 169
    :cond_6
    const-string v0, "Degrees_Front_LANDSCAPE"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setDegrees_Front_landscape(I)V

    goto/16 :goto_2

    .line 171
    :cond_7
    const-string v0, "Degrees_Back_LANDSCAPE"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setDegrees_Back_landscape(I)V

    goto :goto_2

    .line 173
    :cond_8
    const-string v0, "Orientation_Front"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setOrientation_Front(I)V

    goto :goto_2

    .line 175
    :cond_9
    const-string v0, "Orientation_Back"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setOrientation_Back(I)V

    goto :goto_2

    .line 177
    :cond_a
    const-string v0, "System_Rotation"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    new-instance v0, Ljava/lang/Short;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/settings/ReadboyCameraFixInfo;->setSystem_Rotation(I)V

    .end local v8
    .end local v15
    goto :goto_2

    .line 151
    .end local v16
    .restart local v0
    :cond_b
    move-object/from16 v16, v0

    .end local v0
    .restart local v16
    :cond_c
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    const/4 v8, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 182
    .end local v14
    .end local v16
    .restart local v0
    :cond_d
    move-object/from16 v16, v0

    .end local v0
    .restart local v16
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v10
    .end local v11
    .end local v12
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 184
    .end local v9
    .end local v16
    .restart local v0
    :cond_e
    move-object/from16 v16, v0

    .end local v0
    .restart local v16
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    .line 187
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 185
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    .end local v0
    :goto_4
    return-object v1
.end method

.method public static saveData(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/ReadboyCameraFixInfo;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "cameraFixInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/ReadboyCameraFixInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ReadboyCameraFixInfo;

    .line 194
    .local v2, "readboyCameraFixInfo":Lcom/android/settings/ReadboyCameraFixInfo;
    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->isDeleteInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadboyCameraOrientationFix packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 200
    :cond_0
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadboyCameraOrientationFix packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v2}, Lcom/android/settings/ReadboyCameraFixInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .end local v2
    :goto_1
    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method
