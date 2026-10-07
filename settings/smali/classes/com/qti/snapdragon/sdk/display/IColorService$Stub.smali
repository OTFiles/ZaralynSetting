.class public abstract Lcom/qti/snapdragon/sdk/display/IColorService$Stub;
.super Landroid/os/Binder;
.source "IColorService.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/IColorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/IColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/snapdragon/sdk/display/IColorService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 38
    const-string v12, "com.qti.snapdragon.sdk.display.IColorService"

    .line 39
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_0

    packed-switch v9, :pswitch_data_0

    .line 417
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 410
    :pswitch_0    # 0x1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->release()V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    return v13

    .line 400
    :pswitch_1    # 0x1d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getPAParameters(I)[I

    move-result-object v1

    .line 404
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 406
    return v13

    .line 378
    .end local v0
    .end local v1
    :pswitch_2    # 0x1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 382
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 384
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 386
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 388
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 390
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 392
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 393
    .local v20, "_arg6":I
    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setPAParameters(IIIIIII)I

    move-result v0

    .line 394
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    return v13

    .line 368
    .end local v0
    .end local v14
    .end local v15
    .end local v16
    .end local v17
    .end local v18
    .end local v19
    .end local v20
    :pswitch_3    # 0x1b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 371
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getRangePAParameter(I)[I

    move-result-object v1

    .line 372
    .restart local v1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 374
    return v13

    .line 356
    .end local v0
    .end local v1
    :pswitch_4    # 0x1a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 360
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->disableMemoryColorConfiguration(II)I

    move-result v2

    .line 362
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return v13

    .line 344
    .end local v0
    .end local v1
    .end local v2
    :pswitch_5    # 0x19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 349
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getMemoryColorParameters(II)[I

    move-result-object v2

    .line 350
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 352
    return v13

    .line 326
    .end local v0
    .end local v1
    .end local v2
    :pswitch_6    # 0x18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 332
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 334
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 336
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 337
    .local v16, "_arg4":I
    move-object v0, v8

    move v1, v6

    move v2, v7

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setMemoryColorParameters(IIIII)I

    move-result v0

    .line 338
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    return v13

    .line 314
    .end local v0
    .end local v6
    .end local v7
    .end local v14
    .end local v15
    .end local v16
    :pswitch_7    # 0x17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getRangeMemoryColorParameter(II)[I

    move-result-object v2

    .line 320
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 322
    return v13

    .line 300
    .end local v0
    .end local v1
    .end local v2
    :pswitch_8    # 0x16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .restart local v1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .local v2, "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setActiveFeatureControl(III)I

    move-result v3

    .line 308
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    return v13

    .line 288
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :pswitch_9    # 0x15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->isActiveFeatureOn(II)I

    move-result v2

    .line 294
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return v13

    .line 278
    .end local v0
    .end local v1
    .end local v2
    :pswitch_a    # 0x14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getAdaptiveBacklightScale(I)I

    move-result v1

    .line 282
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    return v13

    .line 266
    .end local v0
    .end local v1
    :pswitch_b    # 0x13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setBacklightQualityLevel(II)I

    move-result v2

    .line 272
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return v13

    .line 256
    .end local v0
    .end local v1
    .end local v2
    :pswitch_c    # 0x12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getBacklightQualityLevel(I)I

    move-result v1

    .line 260
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return v13

    .line 246
    .end local v0
    .end local v1
    :pswitch_d    # 0x11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getSunlightVisibilityStrength(I)I

    move-result v1

    .line 250
    .restart local v1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return v13

    .line 234
    .end local v0
    .end local v1
    :pswitch_e    # 0x10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 239
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setSunlightVisibilityStrength(II)I

    move-result v2

    .line 240
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return v13

    .line 222
    .end local v0
    .end local v1
    .end local v2
    :pswitch_f    # 0xf
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getRangeSunlightVisibilityStrength(II)I

    move-result v2

    .line 228
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v13

    .line 208
    .end local v0
    .end local v1
    .end local v2
    :pswitch_10    # 0xe
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v8, v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->modifyModeAllFeatures(IILjava/lang/String;)I

    move-result v3

    .line 216
    .restart local v3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    return v13

    .line 196
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :pswitch_11    # 0xd
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->createNewModeAllFeatures(ILjava/lang/String;)I

    move-result v2

    .line 202
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return v13

    .line 184
    .end local v0
    .end local v1
    .end local v2
    :pswitch_12    # 0xc
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setDefaultMode(II)I

    move-result v2

    .line 190
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return v13

    .line 174
    .end local v0
    .end local v1
    .end local v2
    :pswitch_13    # 0xb
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultMode(I)I

    move-result v1

    .line 178
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v13

    .line 156
    .end local v0
    .end local v1
    :pswitch_14    # 0xa
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 160
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 162
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 166
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 167
    .restart local v18
    move-object v0, v8

    move v1, v7

    move v2, v14

    move-object v3, v15

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->modifyMode(IILjava/lang/String;JI)I

    move-result v0

    .line 168
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v13

    .line 140
    .end local v0
    .end local v7
    .end local v14
    .end local v15
    .end local v16
    .end local v18
    :pswitch_15    # 0x9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 144
    .restart local v6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 148
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 149
    .local v16, "_arg3":I
    move-object v0, v8

    move v1, v6

    move-object v2, v7

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->createNewMode(ILjava/lang/String;JI)I

    move-result v0

    .line 150
    .restart local v0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v13

    .line 128
    .end local v0
    .end local v6
    .end local v7
    .end local v14
    .end local v16
    :pswitch_16    # 0x8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 134
    .local v2, "_result":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 136
    return v13

    .line 116
    .end local v0
    .end local v1
    .end local v2
    :pswitch_17    # 0x7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->deleteMode(II)I

    move-result v2

    .line 122
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v13

    .line 104
    .end local v0
    .end local v1
    .end local v2
    :pswitch_18    # 0x6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setActiveMode(II)I

    move-result v2

    .line 110
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v13

    .line 94
    .end local v0
    .end local v1
    .end local v2
    :pswitch_19    # 0x5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getActiveMode(I)[J

    move-result-object v1

    .line 98
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 100
    return v13

    .line 82
    .end local v0
    .end local v1
    :pswitch_1a    # 0x4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getNumModes(II)I

    move-result v2

    .line 88
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v13

    .line 72
    .end local v0
    .end local v1
    .end local v2
    :pswitch_1b    # 0x3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0
    invoke-virtual {v8, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getColorBalance(I)I

    move-result v1

    .line 76
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v13

    .line 60
    .end local v0
    .end local v1
    :pswitch_1c    # 0x2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setColorBalance(II)I

    move-result v2

    .line 66
    .restart local v2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v13

    .line 48
    .end local v0
    .end local v1
    .end local v2
    :pswitch_1d    # 0x1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .restart local v0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .restart local v1
    invoke-virtual {v8, v0, v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->isFeatureSupported(II)Z

    move-result v2

    .line 54
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v13

    .line 43
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d    # 0x1
        :pswitch_1c    # 0x2
        :pswitch_1b    # 0x3
        :pswitch_1a    # 0x4
        :pswitch_19    # 0x5
        :pswitch_18    # 0x6
        :pswitch_17    # 0x7
        :pswitch_16    # 0x8
        :pswitch_15    # 0x9
        :pswitch_14    # 0xa
        :pswitch_13    # 0xb
        :pswitch_12    # 0xc
        :pswitch_11    # 0xd
        :pswitch_10    # 0xe
        :pswitch_f    # 0xf
        :pswitch_e    # 0x10
        :pswitch_d    # 0x11
        :pswitch_c    # 0x12
        :pswitch_b    # 0x13
        :pswitch_a    # 0x14
        :pswitch_9    # 0x15
        :pswitch_8    # 0x16
        :pswitch_7    # 0x17
        :pswitch_6    # 0x18
        :pswitch_5    # 0x19
        :pswitch_4    # 0x1a
        :pswitch_3    # 0x1b
        :pswitch_2    # 0x1c
        :pswitch_1    # 0x1d
        :pswitch_0    # 0x1e
    .end packed-switch
.end method
