/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'booking.dart' as _i4;
import 'example.dart' as _i5;
import 'fee.dart' as _i6;
import 'geo_address.dart' as _i7;
import 'integration.dart' as _i8;
import 'integration_type.dart' as _i9;
import 'location.dart' as _i10;
import 'location_team.dart' as _i11;
import 'maintenace.dart' as _i12;
import 'maintenance_type.dart' as _i13;
import 'media.dart' as _i14;
import 'media_type.dart' as _i15;
import 'product.dart' as _i16;
import 'task.dart' as _i17;
import 'user.dart' as _i18;
import 'user_device.dart' as _i19;
import 'user_invitation.dart' as _i20;
import 'user_type.dart' as _i21;
import 'protocol.dart' as _i22;
import 'package:nomadlodge_backend_server/src/generated/booking.dart' as _i23;
import 'package:nomadlodge_backend_server/src/generated/maintenace.dart'
    as _i24;
import 'package:nomadlodge_backend_server/src/generated/integration.dart'
    as _i25;
import 'package:nomadlodge_backend_server/src/generated/location.dart' as _i26;
import 'package:nomadlodge_backend_server/src/generated/location_team.dart'
    as _i27;
import 'package:nomadlodge_backend_server/src/generated/task.dart' as _i28;
export 'booking.dart';
export 'example.dart';
export 'fee.dart';
export 'geo_address.dart';
export 'integration.dart';
export 'integration_type.dart';
export 'location.dart';
export 'location_team.dart';
export 'maintenace.dart';
export 'maintenance_type.dart';
export 'media.dart';
export 'media_type.dart';
export 'product.dart';
export 'task.dart';
export 'user.dart';
export 'user_device.dart';
export 'user_invitation.dart';
export 'user_type.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'booking',
      dartName: 'Booking',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'booking_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'externalId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'platform',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'start',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'end',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'locationId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'booking_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'booking_fk_1',
          columns: ['locationId'],
          referenceTable: 'location',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'booking_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'booking_user_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'booking_location_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'locationId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'fee',
      dartName: 'Fee',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'fee_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'value',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'fee_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'geoaddress',
      dartName: 'GeoAddress',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'geoaddress_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'shortAddress',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'longAddress',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'latitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'longitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'geoaddress_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'integration',
      dartName: 'Integration',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'integration_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'apiKey',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'integrationType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:IntegrationType',
        ),
        _i2.ColumnDefinition(
          name: 'lastReloadDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'integration_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'integration_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'integration_user_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'location',
      dartName: 'Location',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'location_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'externalId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'longDescription',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'shortDescription',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'website',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'rooms',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'geoAddressId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'location_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'location_fk_1',
          columns: ['geoAddressId'],
          referenceTable: 'geoaddress',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'location_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'location_user_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'location_geoaddress_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'geoAddressId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'location_team',
      dartName: 'LocationTeam',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'location_team_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'users',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<protocol:User>?',
        ),
        _i2.ColumnDefinition(
          name: 'locationId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'location_team_fk_0',
          columns: ['locationId'],
          referenceTable: 'location',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'location_team_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'locationteam_location_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'locationId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'maintenance',
      dartName: 'Maintenance',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'maintenance_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'maintenancetype',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:MaintenanceType',
        ),
        _i2.ColumnDefinition(
          name: 'start',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'end',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'feeId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'locationId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'bookingId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'maintenance_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'maintenance_fk_1',
          columns: ['feeId'],
          referenceTable: 'fee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'maintenance_fk_2',
          columns: ['locationId'],
          referenceTable: 'location',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'maintenance_fk_3',
          columns: ['bookingId'],
          referenceTable: 'booking',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'maintenance_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'maintenance_user_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'maintenance_fee_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'feeId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'maintenance_location_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'locationId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'maintenance_booking_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'bookingId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'media',
      dartName: 'Media',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'media_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'url',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'mediaType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:MediaType',
        ),
        _i2.ColumnDefinition(
          name: '_locationMediasLocationId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_productMediasProductId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: '_taskImagesTaskId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'media_fk_0',
          columns: ['_locationMediasLocationId'],
          referenceTable: 'location',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'media_fk_1',
          columns: ['_productMediasProductId'],
          referenceTable: 'product',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'media_fk_2',
          columns: ['_taskImagesTaskId'],
          referenceTable: 'task',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'media_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'product',
      dartName: 'Product',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'product_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'start',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'end',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'feeId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'locationId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'product_fk_0',
          columns: ['feeId'],
          referenceTable: 'fee',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'product_fk_1',
          columns: ['locationId'],
          referenceTable: 'location',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'product_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'product_fee_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'feeId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'product_location_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'locationId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'task',
      dartName: 'Task',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'task_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isCompleted',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: '_maintenanceTasksMaintenanceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'task_fk_0',
          columns: ['_maintenanceTasksMaintenanceId'],
          referenceTable: 'maintenance',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'task_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user',
      dartName: 'User',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'authUserIdentifier',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'externalId',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'country',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'userType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:UserType',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_device',
      dartName: 'UserDevice',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_device_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'token',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'plaform',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'osVersion',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'deviceInfo',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: '_userDevicesUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_device_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_device_fk_1',
          columns: ['_userDevicesUserId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_device_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'userdevice_user_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_invitation',
      dartName: 'UserInvitation',
      schema: 'public',
      module: 'nomadlodge_backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_invitation_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'code',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'url',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'hasBeenUsed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_invitation_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_invitation_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'user_invitation_user_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.Booking) {
      return _i4.Booking.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.Fee) {
      return _i6.Fee.fromJson(data) as T;
    }
    if (t == _i7.GeoAddress) {
      return _i7.GeoAddress.fromJson(data) as T;
    }
    if (t == _i8.Integration) {
      return _i8.Integration.fromJson(data) as T;
    }
    if (t == _i9.IntegrationType) {
      return _i9.IntegrationType.fromJson(data) as T;
    }
    if (t == _i10.Location) {
      return _i10.Location.fromJson(data) as T;
    }
    if (t == _i11.LocationTeam) {
      return _i11.LocationTeam.fromJson(data) as T;
    }
    if (t == _i12.Maintenance) {
      return _i12.Maintenance.fromJson(data) as T;
    }
    if (t == _i13.MaintenanceType) {
      return _i13.MaintenanceType.fromJson(data) as T;
    }
    if (t == _i14.Media) {
      return _i14.Media.fromJson(data) as T;
    }
    if (t == _i15.MediaType) {
      return _i15.MediaType.fromJson(data) as T;
    }
    if (t == _i16.Product) {
      return _i16.Product.fromJson(data) as T;
    }
    if (t == _i17.Task) {
      return _i17.Task.fromJson(data) as T;
    }
    if (t == _i18.User) {
      return _i18.User.fromJson(data) as T;
    }
    if (t == _i19.UserDevice) {
      return _i19.UserDevice.fromJson(data) as T;
    }
    if (t == _i20.UserInvitation) {
      return _i20.UserInvitation.fromJson(data) as T;
    }
    if (t == _i21.UserType) {
      return _i21.UserType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.Booking?>()) {
      return (data != null ? _i4.Booking.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Fee?>()) {
      return (data != null ? _i6.Fee.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.GeoAddress?>()) {
      return (data != null ? _i7.GeoAddress.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Integration?>()) {
      return (data != null ? _i8.Integration.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.IntegrationType?>()) {
      return (data != null ? _i9.IntegrationType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Location?>()) {
      return (data != null ? _i10.Location.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.LocationTeam?>()) {
      return (data != null ? _i11.LocationTeam.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Maintenance?>()) {
      return (data != null ? _i12.Maintenance.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.MaintenanceType?>()) {
      return (data != null ? _i13.MaintenanceType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Media?>()) {
      return (data != null ? _i14.Media.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.MediaType?>()) {
      return (data != null ? _i15.MediaType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Product?>()) {
      return (data != null ? _i16.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.Task?>()) {
      return (data != null ? _i17.Task.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.User?>()) {
      return (data != null ? _i18.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.UserDevice?>()) {
      return (data != null ? _i19.UserDevice.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.UserInvitation?>()) {
      return (data != null ? _i20.UserInvitation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.UserType?>()) {
      return (data != null ? _i21.UserType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i22.Media>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i22.Media>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i22.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i22.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i22.Task>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i22.Task>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i22.Media>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i22.Media>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i22.Media>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i22.Media>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i22.UserDevice>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i22.UserDevice>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i23.Booking>) {
      return (data as List).map((e) => deserialize<_i23.Booking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i24.Maintenance>) {
      return (data as List)
          .map((e) => deserialize<_i24.Maintenance>(e))
          .toList() as dynamic;
    }
    if (t == List<_i25.Integration>) {
      return (data as List)
          .map((e) => deserialize<_i25.Integration>(e))
          .toList() as dynamic;
    }
    if (t == List<_i26.Location>) {
      return (data as List).map((e) => deserialize<_i26.Location>(e)).toList()
          as dynamic;
    }
    if (t == List<_i27.LocationTeam>) {
      return (data as List)
          .map((e) => deserialize<_i27.LocationTeam>(e))
          .toList() as dynamic;
    }
    if (t == List<_i28.Task>) {
      return (data as List).map((e) => deserialize<_i28.Task>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i4.Booking) {
      return 'Booking';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Fee) {
      return 'Fee';
    }
    if (data is _i7.GeoAddress) {
      return 'GeoAddress';
    }
    if (data is _i8.Integration) {
      return 'Integration';
    }
    if (data is _i9.IntegrationType) {
      return 'IntegrationType';
    }
    if (data is _i10.Location) {
      return 'Location';
    }
    if (data is _i11.LocationTeam) {
      return 'LocationTeam';
    }
    if (data is _i12.Maintenance) {
      return 'Maintenance';
    }
    if (data is _i13.MaintenanceType) {
      return 'MaintenanceType';
    }
    if (data is _i14.Media) {
      return 'Media';
    }
    if (data is _i15.MediaType) {
      return 'MediaType';
    }
    if (data is _i16.Product) {
      return 'Product';
    }
    if (data is _i17.Task) {
      return 'Task';
    }
    if (data is _i18.User) {
      return 'User';
    }
    if (data is _i19.UserDevice) {
      return 'UserDevice';
    }
    if (data is _i20.UserInvitation) {
      return 'UserInvitation';
    }
    if (data is _i21.UserType) {
      return 'UserType';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Booking') {
      return deserialize<_i4.Booking>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Fee') {
      return deserialize<_i6.Fee>(data['data']);
    }
    if (data['className'] == 'GeoAddress') {
      return deserialize<_i7.GeoAddress>(data['data']);
    }
    if (data['className'] == 'Integration') {
      return deserialize<_i8.Integration>(data['data']);
    }
    if (data['className'] == 'IntegrationType') {
      return deserialize<_i9.IntegrationType>(data['data']);
    }
    if (data['className'] == 'Location') {
      return deserialize<_i10.Location>(data['data']);
    }
    if (data['className'] == 'LocationTeam') {
      return deserialize<_i11.LocationTeam>(data['data']);
    }
    if (data['className'] == 'Maintenance') {
      return deserialize<_i12.Maintenance>(data['data']);
    }
    if (data['className'] == 'MaintenanceType') {
      return deserialize<_i13.MaintenanceType>(data['data']);
    }
    if (data['className'] == 'Media') {
      return deserialize<_i14.Media>(data['data']);
    }
    if (data['className'] == 'MediaType') {
      return deserialize<_i15.MediaType>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i16.Product>(data['data']);
    }
    if (data['className'] == 'Task') {
      return deserialize<_i17.Task>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i18.User>(data['data']);
    }
    if (data['className'] == 'UserDevice') {
      return deserialize<_i19.UserDevice>(data['data']);
    }
    if (data['className'] == 'UserInvitation') {
      return deserialize<_i20.UserInvitation>(data['data']);
    }
    if (data['className'] == 'UserType') {
      return deserialize<_i21.UserType>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Booking:
        return _i4.Booking.t;
      case _i6.Fee:
        return _i6.Fee.t;
      case _i7.GeoAddress:
        return _i7.GeoAddress.t;
      case _i8.Integration:
        return _i8.Integration.t;
      case _i10.Location:
        return _i10.Location.t;
      case _i11.LocationTeam:
        return _i11.LocationTeam.t;
      case _i12.Maintenance:
        return _i12.Maintenance.t;
      case _i14.Media:
        return _i14.Media.t;
      case _i16.Product:
        return _i16.Product.t;
      case _i17.Task:
        return _i17.Task.t;
      case _i18.User:
        return _i18.User.t;
      case _i19.UserDevice:
        return _i19.UserDevice.t;
      case _i20.UserInvitation:
        return _i20.UserInvitation.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'nomadlodge_backend';
}
