/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

@testable import FBSDKCoreKit
import TestTools

// swiftlint:disable:next swiftlint_disable_without_this_or_next
// swiftlint:disable line_length

enum TestCoreKitComponents {

  static func makeComponents(
    accessTokenExpirer: _AccessTokenExpiring = TestAccessTokenExpirer(),
    accessTokenWallet: (_AccessTokenProviding & _TokenStringProviding).Type = TestAccessTokenWallet.self,
    advertiserIDProvider: _AdvertiserIDProviding = TestAdvertiserIDProvider(),
    aemNetworker: AEMNetworking? = TestAEMNetworker(),
    aemReporter: _AEMReporterProtocol.Type = TestAEMReporter.self,
    appEventParametersExtractor: _AppEventParametersExtracting = TestAppEventParametersExtractor(),
    appEvents: _AppEventsConfiguring & _ApplicationActivating & _ApplicationLifecycleObserving & _ApplicationStateSetting & EventLogging & _SourceApplicationTracking = TestAppEvents(),
    appEventsConfigurationProvider: _AppEventsConfigurationProviding = TestAppEventsConfigurationProvider(),
    appEventsDropDeterminer: _AppEventDropDetermining = TestAppEventsDropDeterminer(),
    appEventsStateProvider: _AppEventsStateProviding = TestAppEventsStateProvider(),
    appEventsStateStore: _AppEventsStatePersisting = TestAppEventsStateStore(),
    appEventsUtility: _AppEventDropDetermining & _AppEventParametersExtracting & _AppEventsUtilityProtocol & _LoggingNotifying = TestAppEventsUtility(),
    appLinkEventPoster: _AppLinkEventPosting = TestAppLinkEventPoster(),
    appLinkFactory: _AppLinkCreating = TestAppLinkFactory(),
    appLinkResolver: AppLinkResolving = TestAppLinkResolver(),
    appLinkTargetFactory: _AppLinkTargetCreating = TestAppLinkTargetFactory(),
    appLinkURLFactory: _AppLinkURLCreating = TestAppLinkURLFactory(),
    atePublisherFactory: _ATEPublisherCreating = TestATEPublisherFactory(),
    authenticationTokenWallet: _AuthenticationTokenProviding.Type = TestAuthenticationTokenWallet.self,
    backgroundEventLogger: BackgroundEventLogging = TestBackgroundEventLogger(),
    capiReporter: CAPIReporter = TestCAPIReporter(),
    codelessIndexer: _CodelessIndexing.Type = TestCodelessEvents.self,
    crashHandler: CrashHandlerProtocol = TestCrashHandler(),
    crashObserver: CrashObserving = TestCrashObserver(),
    dataExtractor: _FileDataExtracting.Type = TestFileDataExtractor.self,
    defaultDataStore: DataPersisting = TestDataStore(),
    deviceInformationProvider: _DeviceInformationProviding = TestDeviceInformationProvider(),
    dialogConfigurationMapBuilder: _DialogConfigurationMapBuilding = TestDialogConfigurationMapBuilder(),
    errorConfigurationProvider: _ErrorConfigurationProviding = TestErrorConfigurationProvider(),
    errorFactory: ErrorCreating = TestErrorFactory(),
    errorReporter: ErrorReporting = TestErrorReporter(),
    eventDeactivationManager: _AppEventsParameterProcessing & _EventsProcessing = TestAppEventsParameterProcessor(),
    eventLogger: EventLogging = TestEventLogger(),
    featureChecker: FeatureChecking & _FeatureDisabling = TestFeatureManager(),
    featureExtractor: _FeatureExtracting.Type = TestFeatureExtractor.self,
    fileManager: _FileManaging = TestFileManager(),
    gateKeeperManager: _GateKeeperManaging.Type = TestGateKeeperManager.self,
    getApplicationActivationNotifier: @escaping () -> Any = { UninhabitedObject.shared },
    graphRequestConnectionFactory: GraphRequestConnectionFactoryProtocol = TestGraphRequestConnectionFactory(),
    graphRequestFactory: GraphRequestFactoryProtocol = TestGraphRequestFactory(),
    impressionLoggerFactory: _ImpressionLoggerFactoryProtocol = TestImpressionLoggerFactory(),
    infoDictionaryProvider: InfoDictionaryProviding = TestBundle(),
    internalURLOpener: _InternalURLOpener = TestInternalURLOpener(),
    internalUtility: InternalUtilityProtocol = TestInternalUtility(),
    logger: Logging.Type = TestLogger.self,
    loggerFactory: _LoggerCreating = TestLoggerFactory(),
    macCatalystDeterminator: _MacCatalystDetermining = TestMacCatalystDeterminator(),
    metadataIndexer: _MetadataIndexing = TestMetadataIndexer(),
    modelManager: _EventProcessing & _IntegrityParametersProcessorProvider = TestOnDeviceMLModelManager(),
    notificationCenter: NotificationDelivering & _NotificationPosting = TestNotificationCenter(),
    operatingSystemVersionComparer: _OperatingSystemVersionComparing = TestProcessInfo(),
    paymentObserver: _PaymentObserving = TestPaymentObserver(),
    piggybackManager: _GraphRequestPiggybackManaging = TestGraphRequestPiggybackManager(),
    profileSetter: ProfileProviding.Type = TestProfileProvider.self,
    restrictiveDataFilterManager: _AppEventsParameterProcessing & _EventsProcessing = TestAppEventsParameterProcessor(),
    rulesFromKeyProvider: _RulesFromKeyProvider = TestOnDeviceMLModelManager(),
    serverConfigurationProvider: _ServerConfigurationProviding = TestServerConfigurationProvider(),
    sessionDataTaskProvider: URLSessionProviding = TestSessionProvider(),
    settings: SettingsLogging & SettingsProtocol = TestSettings(),
    skAdNetworkReporter: (SKAdNetworkReporting & _AppEventsReporter)? = TestSKAdNetworkReporter(),
    skAdNetworkReporterV2: (SKAdNetworkReporting & _AppEventsReporter)? = TestSKAdNetworkReporterV2(),
    suggestedEventsIndexer: _SuggestedEventsIndexerProtocol = TestSuggestedEventsIndexer(),
    swizzler: _Swizzling.Type = TestSwizzler.self,
    timeSpentRecorder: _SourceApplicationTracking & _TimeSpentRecording = TestTimeSpentRecorder(),
    tokenCache: TokenCaching = TestTokenCache(),
    urlHoster: URLHosting = TestURLHoster(),
    urlSessionProxyFactory: _URLSessionProxyProviding = TestURLSessionProxyFactory(),
    userDataStore: _UserDataPersisting = TestUserDataStore(),
    userIDProvider: _UserIDProviding = TestUserIDProvider(),
    webViewProvider: _WebViewProviding = TestWebViewFactory(),
    aemManager: _AutoSetup = TestAEMManager(),
    protectedModeManager: _AppEventsParameterProcessing = TestAppEventsParameterProcessor(),
    bannedParamsManager: MACARuleMatching = TestBannedParamsManager(),
    stdParamEnforcementManager: MACARuleMatching = TestStdParamEnforcementManager(),
    macaRuleMatchingManager: MACARuleMatching = TestMACARuleMatchingManager(),
    blocklistEventsManager: _EventsProcessing = TestBlocklistEventsManager(),
    redactedEventsManager: _EventsProcessing = TestRedactedEventsManager(),
    sensitiveParamsManager: _AppEventsParameterProcessing = TestSensitiveParamsManager(),
    transactionObserver: _TransactionObserving = TestTransactionObserver(),
    iapDedupeProcessor: _IAPDedupeProcessing = TestIAPDedupeProcessor()
  ) -> CoreKitComponents {
    CoreKitComponents(
      accessTokenExpirer: accessTokenExpirer,
      accessTokenWallet: accessTokenWallet,
      advertiserIDProvider: advertiserIDProvider,
      aemNetworker: aemNetworker,
      aemReporter: aemReporter,
      appEventParametersExtractor: appEventParametersExtractor,
      appEvents: appEvents,
      appEventsConfigurationProvider: appEventsConfigurationProvider,
      appEventsDropDeterminer: appEventsDropDeterminer,
      appEventsStateProvider: appEventsStateProvider,
      appEventsStateStore: appEventsStateStore,
      appEventsUtility: appEventsUtility,
      appLinkEventPoster: appLinkEventPoster,
      appLinkFactory: appLinkFactory,
      appLinkResolver: appLinkResolver,
      appLinkTargetFactory: appLinkTargetFactory,
      appLinkURLFactory: appLinkURLFactory,
      atePublisherFactory: atePublisherFactory,
      authenticationTokenWallet: authenticationTokenWallet,
      backgroundEventLogger: backgroundEventLogger,
      capiReporter: capiReporter,
      codelessIndexer: codelessIndexer,
      crashHandler: crashHandler,
      crashObserver: crashObserver,
      dataExtractor: dataExtractor,
      defaultDataStore: defaultDataStore,
      deviceInformationProvider: deviceInformationProvider,
      dialogConfigurationMapBuilder: dialogConfigurationMapBuilder,
      errorConfigurationProvider: errorConfigurationProvider,
      errorFactory: errorFactory,
      errorReporter: errorReporter,
      eventDeactivationManager: eventDeactivationManager,
      eventLogger: eventLogger,
      featureChecker: featureChecker,
      featureExtractor: featureExtractor,
      fileManager: fileManager,
      gateKeeperManager: gateKeeperManager,
      getApplicationActivationNotifier: getApplicationActivationNotifier,
      graphRequestConnectionFactory: graphRequestConnectionFactory,
      graphRequestFactory: graphRequestFactory,
      impressionLoggerFactory: impressionLoggerFactory,
      infoDictionaryProvider: infoDictionaryProvider,
      internalURLOpener: internalURLOpener,
      internalUtility: internalUtility,
      logger: logger,
      loggerFactory: loggerFactory,
      macCatalystDeterminator: macCatalystDeterminator,
      metadataIndexer: metadataIndexer,
      modelManager: modelManager,
      notificationCenter: notificationCenter,
      operatingSystemVersionComparer: operatingSystemVersionComparer,
      paymentObserver: paymentObserver,
      piggybackManager: piggybackManager,
      profileSetter: profileSetter,
      restrictiveDataFilterManager: restrictiveDataFilterManager,
      rulesFromKeyProvider: rulesFromKeyProvider,
      serverConfigurationProvider: serverConfigurationProvider,
      sessionDataTaskProvider: sessionDataTaskProvider,
      settings: settings,
      skAdNetworkReporter: skAdNetworkReporter,
      skAdNetworkReporterV2: skAdNetworkReporterV2,
      suggestedEventsIndexer: suggestedEventsIndexer,
      swizzler: swizzler,
      timeSpentRecorder: timeSpentRecorder,
      tokenCache: tokenCache,
      urlHoster: urlHoster,
      urlSessionProxyFactory: urlSessionProxyFactory,
      userDataStore: userDataStore,
      userIDProvider: userIDProvider,
      webViewProvider: webViewProvider,
      aemManager: aemManager,
      protectedModeManager: protectedModeManager,
      bannedParamsManager: bannedParamsManager,
      stdParamEnforcementManager: stdParamEnforcementManager,
      macaRuleMatchingManager: macaRuleMatchingManager,
      blocklistEventsManager: blocklistEventsManager,
      redactedEventsManager: redactedEventsManager,
      sensitiveParamsManager: sensitiveParamsManager,
      transactionObserver: transactionObserver,
      iapDedupeProcessor: iapDedupeProcessor
    )
  }
}
